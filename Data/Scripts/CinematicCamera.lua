local Ease3D = require(script:GetCustomProperty("Ease3D"))
local Spline = require(script:GetCustomProperty("Spline"))
local EasingEquations = require(script:GetCustomProperty("EasingEquations"))

local RootGroup = script:GetCustomProperty("RootGroup"):WaitForObject()
local KeyframesGroup = script:GetCustomProperty("KeyframesGroup"):WaitForObject()
local BlackScreenImage = script:GetCustomProperty("BlackScreenImage"):WaitForObject()

local Camera = RootGroup:GetCustomProperty("Camera"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local BINDING_START = RootGroup:GetCustomProperty("StartBinding")
local BINDING_CANCEL = RootGroup:GetCustomProperty("CancelBinding")
local EVENT_START = RootGroup:GetCustomProperty("StartEvent")
local EVENT_CANCEL = RootGroup:GetCustomProperty("CancelEvent")

local BINDINGS_FORCE = { "ability_extra_0", "ability_extra_1", "ability_extra_2", "ability_extra_3", "ability_extra_4", "ability_extra_5", "ability_extra_6", "ability_extra_7", "ability_extra_8", "ability_extra_9" }
local BINDINGS_FORCE_NUMPAD = { "ability_extra_62", "ability_extra_47", "ability_extra_67", "ability_extra_65", "ability_extra_48", "ability_extra_5", "ability_extra_49", "ability_extra_7", "ability_extra_63", "ability_extra_64" }
local BINDING_KEYFRAME_ABOVE_10 = "ability_extra_10"
local BINDING_KEYFRAME_ABOVE_20 = "ability_feet"
local BINDING_KEYFRAME_ABOVE_30 = "ability_extra_14"

local EASING_EQUATIONS = { "LINEAR", "QUADRATIC", "CUBIC", "QUARTIC", "QUINTIC", "SINE", "EXPONENTIAL", "CIRCULAR", "ELASTIC", "BACK", "BOUNCE" }
local EASING_DIRECTIONS = { "IN", "OUT", "INOUT" }

local isRunning = false
local startTime = time()
local count = 0

local above10 = false
local above20 = false
local above30 = false

local splineTask

local function lerp(a, b, c)
	return a + (b - a) * c
end

local function CancelSplinePath()
	Camera:StopRotate()
	if(not splineTask) then return end

	splineTask:Cancel()
	splineTask = nil
end

local function GetProperty(value, options)
	value = string.upper(value)

	for _, option in pairs(options) do
		if(value == option) then return value end
	end

	return options[1]
end

local function OnBindingPressed(player, binding)
	if(binding == BINDING_KEYFRAME_ABOVE_30) then
		above30 = true
	elseif(binding == BINDING_KEYFRAME_ABOVE_20) then
		above20 = true
	elseif(binding == BINDING_KEYFRAME_ABOVE_10) then
		above10 = true
	end
end

local function OnBindingReleased(player, binding)
	if(binding == BINDING_START) then
		if((time() - startTime) < 0.1) then return end
		return Start()
	elseif(binding == BINDING_CANCEL) then
		return Cancel()
	elseif(binding == BINDING_KEYFRAME_ABOVE_30) then
		above30 = false
		return
	elseif(binding == BINDING_KEYFRAME_ABOVE_20) then
		above20 = false
		return
	elseif(binding == BINDING_KEYFRAME_ABOVE_10) then
		above10 = false
		return
	end

	if((time() - startTime) < 0.1) then return end

	for index, forceBinding in pairs(BINDINGS_FORCE) do
		if(binding ~= forceBinding) then goto continue end

		if(above30) then
			return Start(30 + (index - 1))
		elseif(above20) then
			return Start(20 + (index - 1))
		elseif(above10) then
			return Start(10 + (index - 1))
		else
			if(index == 1 or index == 2) then
				return Start()
			else
				return Start(index - 1)
			end
		end

		::continue::
	end
end

local function SnapToKeyframe(keyframe)
	Camera:SetWorldPosition(keyframe:GetWorldPosition())
	Camera:SetWorldRotation(keyframe:GetWorldRotation())
	Camera.fieldOfView = keyframe.fieldOfView
end

local function GoToKeyframe(keyframe, keyframeIndex, selfCount)
	local snap, duration, prePause, postPause, easingEquation, easingDirection =
		keyframe:GetCustomProperty("Snap"),
		keyframe:GetCustomProperty("Duration"),
		keyframe:GetCustomProperty("PrePause"),
		keyframe:GetCustomProperty("PostPause"),
		keyframe:GetCustomProperty("EasingEquation"),
		keyframe:GetCustomProperty("EasingDirection")

	easingEquation = GetProperty(easingEquation, EASING_EQUATIONS)
	easingDirection = GetProperty(easingDirection, EASING_DIRECTIONS)

	easingEquation, easingDirection =
		Ease3D.EasingEquation[easingEquation],
		Ease3D.EasingDirection[easingDirection]

	if(not isRunning) then return end
	if(selfCount ~= count) then return end

	if(prePause > 0) then
		Events.Broadcast("KeyframePrePauseBegin", RootGroup, keyframeIndex, isRunning)
		Task.Wait(prePause)
		Events.Broadcast("KeyframePrePauseEnd", RootGroup, keyframeIndex, isRunning)
	end

	if(not isRunning) then return end
	if(selfCount ~= count) then return end

	if(index == 1) then
		LocalPlayer:SetOverrideCamera(Camera)
	end

	Events.Broadcast("KeyframeExecuteBegin", RootGroup, keyframeIndex, isRunning)
	if(snap or keyframeIndex == 1) then
		SnapToKeyframe(keyframe)
		Task.Wait(duration)
	else
		--DefaultCamera:MoveTo(keyframe:GetWorldPosition(), duration)
		--DefaultCamera:RotateTo(keyframe:GetWorldRotation(), duration)
		Ease3D.EaseWorldPosition(Camera, keyframe:GetWorldPosition(), duration, easingEquation, easingDirection)
		Ease3D.EaseWorldRotation(Camera, keyframe:GetWorldRotation(), duration, easingEquation, easingDirection)
		Ease3D.EaseNumber(Camera, "fieldOfView", keyframe.fieldOfView, duration, easingEquation, easingDirection)
		Task.Wait(duration)
	end
	Events.Broadcast("KeyframeExecuteEnd", RootGroup, keyframeIndex, isRunning)

	if(postPause > 0) then
		Events.Broadcast("KeyframePostPauseBegin", RootGroup, keyframeIndex, isRunning)
		Task.Wait(postPause)
		Events.Broadcast("KeyframePostPauseEnd", RootGroup, keyframeIndex, isRunning)
	end
end

local function TravelSpline(group, keyframeIndex, selfCount)
	local keyframes = group:GetChildren()

	local lastKeyframe = keyframes[#keyframes]
	local endRotation = lastKeyframe:GetWorldRotation()

	local target, snap, prePause, postPause, easingEquation, easingDirection =
		group:GetCustomProperty("Target"),
		group:GetCustomProperty("Snap"),
		group:GetCustomProperty("PrePause"),
		group:GetCustomProperty("PostPause"),
		group:GetCustomProperty("EasingEquation"),
		group:GetCustomProperty("EasingDirection")

	easingEquation = GetProperty(easingEquation, EASING_EQUATIONS)
	easingDirection = GetProperty(easingDirection, EASING_DIRECTIONS)

	easingEquation, easingDirection =
		Ease3D.EasingEquation[easingEquation],
		Ease3D.EasingDirection[easingDirection]

	local duration = group:GetCustomProperty("Duration")

	local nodes, nodeKeyframes = {}, {}
	for index, keyframe in pairs(keyframes) do
		if(not snap and index == 1) then
			if((Camera:GetWorldPosition() - keyframe:GetWorldPosition()).size >= 1) then
				table.insert(nodes, Camera:GetWorldPosition())
				table.insert(nodes, keyframe:GetWorldPosition())
				table.insert(nodeKeyframes, Camera)
				table.insert(nodeKeyframes, keyframe)
			else
				table.insert(nodes, keyframe:GetWorldPosition())
				table.insert(nodeKeyframes, keyframe)
			end
		else
			table.insert(nodes, keyframe:GetWorldPosition())
			table.insert(nodeKeyframes, keyframe)
		end
	end

	if(prePause > 0) then
		Events.Broadcast("KeyframePrePauseBegin", RootGroup, keyframeIndex, isRunning)
		Task.Wait(prePause)
		Events.Broadcast("KeyframePrePauseEnd", RootGroup, keyframeIndex, isRunning)
	end

	if(not isRunning) then return end
	if(selfCount ~= count) then return end

	local targetPosition
	if(target.isAssigned) then
		target = target:WaitForObject()
		if(Object.IsValid(target)) then
			targetPosition = target:GetWorldPosition()
		end
	end

	Ease3D.EaseNumber(Camera, "fieldOfView", lastKeyframe.fieldOfView, duration, easingEquation, easingDirection)

	local easingFormula = EasingEquations.GetEasingEquationFormula(EasingEquations.EasingEquation.LINEAR, EasingEquations.EasingDirection.INOUT)

	local previousNodeIndex, nextNodeIndex = 0, 0
	local cameraGoal
	local start, goal
	local startX, startY, startZ
	local deltaX, deltaY, deltaZ

	local startTime = time()
	splineTask = Task.Spawn(function()
		if(count ~= selfCount) then return end
		if((time() - startTime) > duration) then
			return CancelSplinePath()
		end

		local point, fromNodeIndex = Spline.GetPointOnPath(nodes, CoreMath.Clamp((time() - startTime) / duration, 0, 1))
		if(not point) then return end
		Camera:SetWorldPosition(point)

		if(not fromNodeIndex) then return end

		if(previousNodeIndex ~= fromNodeIndex) then
			for index = fromNodeIndex + 1, #nodes do
				if(index >= #nodes) then
					index = #nodes
					cameraGoal = nodeKeyframes[index]
					nextNodeIndex = index
					break
				end

				local node = nodeKeyframes[index]
				if(node:GetCustomProperty("IgnoreRotation")) then goto next end

				cameraGoal = node
				nextNodeIndex = index
				break

				::next::
			end
			if(not Object.IsValid(cameraGoal)) then return end

			previousNodeIndex = fromNodeIndex

			start, goal =
				Camera:GetWorldRotation(),
				cameraGoal:GetWorldRotation()

			startX, startY, startZ = start.x, start.y, start.z
			local goalX, goalY, goalZ = goal.x, goal.y, goal.z

			local directionX = ((startX < goalX) and 1) or -1
			local directionY = ((startY < goalY) and 1) or -1
			local directionZ = ((startZ < goalZ) and 1) or -1

			--local deltaX, deltaY, deltaZ
			if(math.abs(goalX - startX) > 180) then
				deltaX = -directionX * (360 - math.abs(goalX - startX))
			else
				deltaX = directionX * math.abs(goalX - startX)
			end
			if(math.abs(goalY - startY) > 180) then
				deltaY = -directionY * (360 - math.abs(goalY - startY))
			else
				deltaY = directionY * math.abs(goalY - startY)
			end
			if(math.abs(goalZ - startZ) > 180) then
				deltaZ = -directionZ * (360 - math.abs(goalZ - startZ))
			else
				deltaZ = directionZ * math.abs(goalZ - startZ)
			end
		end

		if(Object.IsValid(target)) then
			Camera:LookAt(target:GetWorldPosition())
		elseif(Object.IsValid(cameraGoal)) then
			local fullDistance = (nodes[previousNodeIndex] - nodes[nextNodeIndex]).size
			local distance = (Camera:GetWorldPosition() - nodes[nextNodeIndex]).size

			local currentTime = CoreMath.Clamp(1 - (distance/fullDistance), 0, 1)
			local x = easingFormula(currentTime, startX, deltaX, 1)
			local y = easingFormula(currentTime, startY, deltaY, 1)
			local z = easingFormula(currentTime, startZ, deltaZ, 1)

			Camera:SetWorldRotation(Rotation.New(x, y, z))
		end
	end)
	splineTask.repeatCount = -1
	splineTask.repeatInterval = -1

	Task.Wait(duration)

	if(not isRunning) then return end
	if(selfCount ~= count) then return end

	if(postPause > 0) then
		Events.Broadcast("KeyframePostPauseBegin", RootGroup, keyframeIndex, isRunning)
		Task.Wait(postPause)
		Events.Broadcast("KeyframePostPauseEnd", RootGroup, keyframeIndex, isRunning)
	end
end

local function GetFirstKeyframe(keyframes, offset)
	local firstKeyframe = keyframes[offset or 1]
	if(not firstKeyframe) then return end

	if(firstKeyframe:IsA("Folder")) then
		return firstKeyframe:GetChildren()[1]
	else
		return firstKeyframe
	end
end

local function GetLastKeyframe(keyframes, offset)
	local lastKeyframe = keyframes[offset or 1]
	if(not lastKeyframe) then return end

	if(lastKeyframe:IsA("Folder")) then
		local children = lastKeyframe:GetChildren()
		return children[#children]
	else
		return lastKeyframe
	end
end

function Start(keyframeId)
	if(isRunning) then
		Cancel()
	end

	isRunning = true
	count = count + 1
	startTime = time()

	local selfCount = count

	Events.Broadcast("CinematicBegin", RootGroup)

	local keyframes = KeyframesGroup:GetChildren()

	local firstKeyframe = GetFirstKeyframe(keyframes)
	SnapToKeyframe(firstKeyframe)
	LocalPlayer:SetOverrideCamera(Camera)

	local wentToFirstKeyframe = false
	for index, keyframe in pairs(keyframes) do
		if(not isRunning) then return end
		if(selfCount ~= count) then return end

		if(keyframeId) then
			if(wentToFirstKeyframe) then goto skip end
			if(keyframe:IsA("Folder")) then
				local chilren = keyframe:GetChildren()
				Camera.fieldOfView = chilren[#chilren].fieldOfView
			else
				Camera.fieldOfView = keyframe.fieldOfView
			end
			if(index ~= keyframeId) then goto continue end

			wentToFirstKeyframe = true

			local fromKeyframe = GetLastKeyframe(keyframes, index - 1)
			local toKeyframe = GetFirstKeyframe(keyframes, index)

			if(fromKeyframe) then
				SnapToKeyframe(fromKeyframe)
			end

			if(keyframe:IsA("Folder")) then
				TravelSpline(keyframe, index, selfCount)
			else
				GoToKeyframe(keyframe, index, selfCount)
			end

			goto continue
		end

		::skip::

		if(keyframe:IsA("Folder")) then
			TravelSpline(keyframe, index, selfCount)
		else
			GoToKeyframe(keyframe, index, selfCount)
		end

		::continue::
	end

	if(not isRunning) then return end
	if(selfCount ~= count) then return end

	Events.Broadcast("CinematicEnd", RootGroup)
	LocalPlayer:ClearOverrideCamera()
	isRunning = false
end

function Cancel()
	if(not isRunning) then return end
	isRunning = false

	Camera:StopRotate()
	CancelSplinePath()
	Ease3D.Cancel(Camera)
	LocalPlayer:ClearOverrideCamera()

	Events.Broadcast("CinematicCancel", RootGroup)
end

LocalPlayer.bindingPressedEvent:Connect(OnBindingPressed)
LocalPlayer.bindingReleasedEvent:Connect(OnBindingReleased)

if(#EVENT_START > 0) then
	Events.Connect(EVENT_START, Start)
end
if(#EVENT_CANCEL > 0) then
	Events.Connect(EVENT_CANCEL, Cancel)
end