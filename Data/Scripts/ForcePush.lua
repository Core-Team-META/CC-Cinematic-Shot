local ParentGroup = script.parent--script:GetCustomProperty("RootGroup"):WaitForObject()

local LocalPlayer = Game.GetLocalPlayer()

local VELOCITY_Z_RESTRICTION = ParentGroup:GetCustomProperty("VelocityZRestriction")
local RADIUS_DOT_PRODUCT = ParentGroup:GetCustomProperty("RadiusDotProduct")
local BINDING_PUSH = ParentGroup:GetCustomProperty("PushBinding")
local FORCE = ParentGroup:GetCustomProperty("Force")
local DESTROY_TIME = ParentGroup:GetCustomProperty("DestroyTime")
local RADIUS = ParentGroup:GetCustomProperty("Radius")
local EVENT = ParentGroup:GetCustomProperty("Event")
local PUSH_VECTOR = ParentGroup:GetCustomProperty("PushVector")

local function PushObject(object)
	if(not Object.IsValid(object)) then return end
	if(not object:IsA("StaticMesh")) then return end

	--[[llocal vector = object:GetWorldPosition() - LocalPlayer:GetWorldPosition()
	if(vector.size > RADIUS) then return end

	local normal = vector:GetNormalized()
	ocal forwardVector = player:GetWorldTransform():GetForwardVector()
	local dot = normal .. forwardVector
	if dot < RADIUS_DOT_PRODUCT then return end]]

	--[[if(VELOCITY_Z_RESTRICTION >= 0) then
		if(vector.z < VELOCITY_Z_RESTRICTION) then
			vector.z = VELOCITY_Z_RESTRICTION
		end
	end]]

	object.isSimulatingDebrisPhysics = true
	object:SetVelocity(PUSH_VECTOR * FORCE)
	--object:MoveContinuous(vector * 10)

	return true
end

local function DestroyObject(object)
	if(not Object.IsValid(object)) then return end
	if(not object:IsA("StaticMesh")) then return end

	object:Destroy()
end

local function PushObjects()
	local taggedObjects = {}
	for _, object in pairs(ParentGroup:GetChildren()) do
		local tagged = PushObject(object)
		if(tagged) then
			table.insert(taggedObjects, object)
		end
	end

	if(#taggedObjects < 1) then return end

	Task.Wait(DESTROY_TIME)

	for _, object in pairs(taggedObjects) do
		DestroyObject(object)
	end
end

local function OnBindingReleased(player, binding)
	if(binding ~= BINDING_PUSH) then return end

	PushObjects()
end

LocalPlayer.bindingReleasedEvent:Connect(OnBindingReleased)
Events.Connect(EVENT, PushObjects)