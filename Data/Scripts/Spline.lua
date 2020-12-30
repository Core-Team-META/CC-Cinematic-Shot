local Module = {}

function Module.GetPointOnPath(nodeList, progress) -- catmull-rom cubic hermite interpolation
	if progress == 1 then return nodeList[#nodeList] end
	local index1 = math.floor(1 + progress * (#nodeList - 1))
	local index2 = index1 + 1
	
	local point1 = nodeList[index1]
	local point2 = nodeList[index2]
	if(not point1 or not point2) then return end

	local tangent1 = (point2 - nodeList[math.max(1, index1 - 1)]) / 2
	local tangent2 = (nodeList[math.min(#nodeList, index1 + 2)] - point1) / 2
	
	local alpha = (progress * (#nodeList - 1)) % 1
	
	local h1 = 2*alpha^3 - 3*alpha^2 + 1
	local h2 = -2*alpha^3 + 3*alpha^2
	local h3 = alpha^3 - 2*alpha^2 + alpha
	local h4 = alpha^3 - alpha^2
	
	return h1*point1 + h2*point2 + h3*tangent1 + h4*tangent2, index1
end

function Module.GetSplinePositions(group, camera, numberOfSegments)
	local referencePositions = {}
	for index, point in pairs(group:GetChildren()) do
		if(index == 1) then
			if((camera:GetWorldPosition() - point:GetWorldPosition()).size >= 1) then
				table.insert(referencePositions, camera:GetWorldPosition())
				table.insert(referencePositions, point:GetWorldPosition())
			else
				table.insert(referencePositions, point:GetWorldPosition())
			end
		else
			table.insert(referencePositions, point:GetWorldPosition())
		end
	end
	for i,v in pairs(referencePositions) do
		print(i,v)
	end

	local positions = {}
	for index = 1, numberOfSegments do
		table.insert(positions, GetPointOnPath(referencePositions, index/numberOfSegments))
	end

	return positions
end

return Module