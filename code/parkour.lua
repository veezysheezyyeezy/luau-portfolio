-- parkour.lua
-- Ledge detection and basic transitions
local Parkour = {}

function Parkour:findLedge(origin, forwardDir, forwardDist, downDist)
  local forwardRay = Ray.new(origin, forwardDir.Unit * forwardDist)
  local hitPart, hitPos = workspace:FindPartOnRay(forwardRay)
  if not hitPart then return nil end
  local downStart = hitPos + Vector3.new(0,1,0)
  local downRay = Ray.new(downStart, Vector3.new(0,-1,0) * downDist)
  local groundPart, groundPos = workspace:FindPartOnRay(downRay)
  if groundPart then
    return groundPos
  end
  return nil
end

return Parkour
