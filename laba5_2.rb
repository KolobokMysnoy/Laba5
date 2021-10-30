# frozen_string_literal: true

require 'faker'

def split_with_index(string)
  string.split.each_with_index { |ch_str, index| ch_str.reverse! unless index.even? }.join(' ')
end

def string_not_even_reverse(strings_to_change)
  changed_strings = []
  # strings_to_change.each { |str| changed_strings.push(str.split.each_with_index { |ch_str, index| ch_str.reverse! unless index.even? }.join(' ')) }
  strings_to_change.each { |str| changed_strings.push(split_with_index(str)) }
  changed_strings
end

def generate_word
  Faker::Music.chord
end
