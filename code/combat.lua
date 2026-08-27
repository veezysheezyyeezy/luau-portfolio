-- combat.lua
-- Minimal, annotated snippets to demonstrate structure of an advanced combat system

local Combat = {}

-- Simple combo buffer
Combat.comboWindow = 0.5 -- seconds
Combat.playerCombos = {}

function Combat:registerInput(player, inputName)
  local now = tick()
  local combo = self.playerCombos[player] or {last = 0, count = 0}
  if now - combo.last <= self.comboWindow then
    combo.count = combo.count + 1
  else
    combo.count = 1
  end
  combo.last = now
  self.playerCombos[player] = combo
  -- trigger combo animation on client (predictive)
  -- send input to server for validation and damage resolve
end

-- Server-side pseudo validation example (see project page for more details)
function Combat:validateHit(attacker, targetId, hitPos, timestamp)
  -- perform checks like raycasts, timestamps, distance
  return true -- placeholder
end

return Combat
