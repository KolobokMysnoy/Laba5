# frozen_string_literal: true

require 'faker'

def string_reverse_even( string_to_change)
  string_to_change.map{|x| x.split(' ').each_with_index{|y,i| y.reverse! unless i.even?}.join(' ')};
end

