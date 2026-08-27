-- flight.lua
-- Simple flight helper snippets
local Flight = {}

Flight.alpha = 0.12
Flight.smoothedInput = Vector3.new(0,0,0)

function Flight:smoothInput(raw)
  self.smoothedInput = self.smoothedInput:Lerp(raw, self.alpha)
  return self.smoothedInput
end

function Flight:applyAerodynamics(velocity, liftCoeff, dragCoeff)
  local lift = Vector3.new(0, math.max(0, velocity.Y) * liftCoeff, 0)
  local drag = velocity * -dragCoeff
  return lift + drag
end

return Flight
