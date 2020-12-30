-- Bezier.lua
-- An instancable class allowing for a curve to be created and drawn in relation to X number of reference points
-- Created by Nicholas Foreman (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

local BezierPointTemplate = script:GetCustomProperty("BezierPoint")
local BezierSegmentTemplate = script:GetCustomProperty("BezierSegment")

local Module = {}

local function lerp(a, b, c)
	return a + (b - a) * c
end

function Module.New(references, numberOfSegments)
	local self = setmetatable({}, {__index = Module})
	self._object = true

	self:Calculate(references, numberOfSegments)

	return self
end

function Module.ClearChildren(parent)
	for _, child in pairs(parent:GetChildren()) do
		child:Destroy()
	end
end

function Module:Calculate(references, numberOfSegments)
	self.numberOfSegments = numberOfSegments
	self.references = references
	self.sum, self.standardPositions, self.sums = self:GetStandardPositions()
	self.percentPositions = self:GetPercentPositions()
end

function Module:GetReferencesPositions()
	assert(self._object, "Must be an object")

	local positions = {}
	for _, point in ipairs(self.references:GetChildren()) do
		table.insert(positions, point:GetWorldPosition())
	end

	return positions
end

function Module:GetStandardPositions()
	assert(self._object, "Must be an object")

	local referencePositions = self:GetReferencesPositions()

	local sum, ranges, sums = 0, {}, {}
	for number = 0, self.numberOfSegments do
		local percent = (number / self.numberOfSegments)
		local nextPercent = ((number + 1) / self.numberOfSegments)

		local position1 = self:GetPosition(percent, referencePositions)
		local position2 = self:GetPosition(nextPercent, referencePositions)

		local distance = (position2 - position1).size

		ranges[sum] = {distance, position1, position2}
		table.insert(sums, sum)
		sum = sum + distance
	end

	return sum, ranges, sums
end

function Module:GetPercentPositions()
	assert(self._object, "Must be an object")

	local sum, standardPositions, sums = self.sum, self.standardPositions, self.sums

	local percentPositions = {}
	for number = 0, self.numberOfSegments - 1 do
		local t = number / self.numberOfSegments
		local T, near = t * sum, 0

		for _, n in next, sums do
			if (T - n) < 0 then break end
			near = n
		end
		local set = standardPositions[near]

		local percent = (T - near)/set[1]

		table.insert(percentPositions, set[2] + (set[3] - set[2]) * percent)
	end

	return percentPositions
end

function Module:GetPosition(percent, points)
	assert(self._object, "Must be an object")

	local obtainedPoints = {}
	for index = 1, (#points - 1) do
		local point1, point2 = points[index], points[index + 1]
		local obtainedPoint = lerp(point1, point2, percent)

		table.insert(obtainedPoints, obtainedPoint)
	end

	local point
	if(#obtainedPoints == 2) then
		point = lerp(obtainedPoints[1], obtainedPoints[2], percent)
	else
		point = self:GetPosition(percent, obtainedPoints)
	end

	return point
end

function Module:DrawPoints(parent)
	assert(self._object, "Must be an object")

	Module.ClearChildren(parent)

	for index, position in pairs(self.standardPositions) do
		local pointToDraw = World.SpawnAsset(BezierPointTemplate, {parent = parent})
		pointToDraw:SetWorldPosition(position[2])
		pointToDraw.name = tostring(CoreMath.Round(index / self.sum, 2))
	end
end

function Module:DrawPointsPercent(parent)
	assert(self._object, "Must be an object")

	Module.ClearChildren(parent)

	for index, position in pairs(self.percentPositions) do
		local pointToDraw = World.SpawnAsset(BezierPointTemplate, {parent = parent})
		pointToDraw:SetWorldPosition(position)
		pointToDraw.name = tostring(index / #self.percentPositions)
	end
end

return Module