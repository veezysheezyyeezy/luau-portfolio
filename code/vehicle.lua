-- vehicle.lua
-- Wheel/suspension helper snippets
local Vehicle = {}

function Vehicle:suspensionForce(restLength, currentLength, springK, damperC, relativeVelocity)
  local displacement = restLength - currentLength
  local spring = springK * displacement
  local damper = damperC * -relativeVelocity
  return spring + damper
end

return Vehicle
