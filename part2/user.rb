# frozen_string_literal: true

require './part2/main.rb'
p 'Input number of strings'
number = gets.to_i
p 'Input strings'
strings = []
number.times do
  strings.push(gets.chomp)
end
string_not_even_reverse(strings).each { |string| p string; }
