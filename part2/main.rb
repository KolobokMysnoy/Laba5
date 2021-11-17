# frozen_string_literal: true

require 'faker'

def string_reverse_even(string_to_change)
  # contains iterators nested 2 deep 
  # Do i need to change code?
  string_to_change.map { |x| x.split.each_with_index { |y, index| y.reverse! unless index.even? }.join(' ') }
end
