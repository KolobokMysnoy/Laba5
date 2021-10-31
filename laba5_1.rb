# frozen_string_literal: true

def function(first_parametr, second_parametr)
  return nil if first_parametr.to_s.scan(/^\d/).empty? || second_parametr.to_s.scan(/^\d/).empty?

  first_parametr = first_parametr.to_f
  second_parametr = second_parametr.to_f
  first_parametr * (Math::cos(second_parametr) + Math::exp(-(first_parametr + 3)))
end
