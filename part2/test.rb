# frozen_string_literal: true

require './part2/main.rb'
require 'minitest/autorun'

def generate_word
  Faker::Music.chord
end

class FunctionTest < Minitest::Test
  def setup
    @needed = []
    @result = []
    4.times do
      string_normal = []
      string_rev = []
      10.times do |ind|
        string_normal[ind] = generate_word
        ind.odd? ? string_rev.push(string_normal[ind].reverse) : string_rev.push(string_normal[ind])
        # Я немного не понял про else, поэтому избавился от word
      end
      needed.push(string_normal.join(' '))
      result.push(string_rev.join(' '))
    end
  end

  def test_for_standart_work
    assert_equal(result, string_reverse_even(needed))
  end

  private

  attr_reader :result, :needed
end
