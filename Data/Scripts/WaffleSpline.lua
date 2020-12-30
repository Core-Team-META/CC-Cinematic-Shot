--[[
	SplinePath v1.0 by Waffle

	This module takes an ordered table of positions and defines a curve that passes through the given list of nodes.
	SplinePath.PointOnPath(nodeList, progress) takes a progress argument between 0 and 1 and returns a position along the curve.
	SplinePath.FollowPath(object, nodeList, duration) moves an object along the path in the given amount of time.
]]

local SplinePath = {}

function SplinePath.PointOnPath(nodeList, progress) -- catmull-rom cubic hermite interpolation
	if progress == 1 then return nodeList[#nodeList] end
	local index1 = math.floor(1 + progress * (#nodeList - 1))
	local index2 = index1 + 1
	
	local point1 = nodeList[index1]
	local point2 = nodeList[index2]
	local tangent1 = (point2 - nodeList[math.max(1, index1 - 1)]) / 2
	local tangent2 = (nodeList[math.min(#nodeList, index1 + 2)] - point1) / 2
	
	local alpha = (progress * (#nodeList - 1)) % 1
	
	local h1 =  2*alpha^3 - 3*alpha^2 + 1
	local h2 = -2*alpha^3 + 3*alpha^2
	local h3 =    alpha^3 - 2*alpha^2 + alpha
	local h4 =    alpha^3 -   alpha^2
	
	return h1*point1 + h2*point2 + h3*tangent1 + h4*tangent2
end


function SplinePath.FollowPath(object, nodeList, duration)
	local progress = 0
	local updatePeriod = .1
	while true do
		updatePeriod = Task.Wait()
		if not Object.IsValid(object) then return end
		progress = progress + updatePeriod / duration
		if progress > 1 then break end
		local point = SplinePath.PointOnPath(nodeList, progress)
		object:MoveContinuous((point - object:GetWorldPosition()) / updatePeriod)
		object:RotateTo(Rotation.New(point - object:GetWorldPosition(), Vector3.UP), updatePeriod)
	end
	object:MoveTo(nodeList[#nodeList], updatePeriod)
end

return SplinePath