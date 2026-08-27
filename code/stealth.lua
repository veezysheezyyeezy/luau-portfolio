-- stealth.lua
-- Sensing and simple AI reactions
local Stealth = {}

function Stealth:inSensingCone(agentPos, agentLook, targetPos, angleDeg, range)
  local dir = (targetPos - agentPos)
  if dir.Magnitude > range then return false end
  local dot = agentLook.Unit:Dot(dir.Unit)
  local ang = math.deg(math.acos(math.clamp(dot, -1, 1)))
  return ang <= angleDeg/2
end

function Stealth:propagateAlert(agent, nearbyAgents)
  for _,other in ipairs(nearbyAgents) do
    -- increase alert level, interrupt patrol
  end
end

return Stealth
