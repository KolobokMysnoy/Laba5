# frozen_string_literal: true

def function(first_parametr, second_parametr)
  [first_parametr, second_parametr].map { |x| Float(x); }.then { |x, y| return x * (Math.cos(y) + Math.exp(-(x + 3))) }
rescue StandardError
  nil
end
