# frozen_string_literal: true

require './laba5_1'
require 'minitest/autorun'

class TestMeme < Minitest::Test
  def setup
    @result = 4.9742
    @first_parametr = 5
    @wrong_first_parametr = 'aa'
    @second_parametr = 6
  end

  def test_1
    assert_in_delta(@result, function(@first_parametr, @second_parametr), 0.001)
  end

  def test_2
    assert_nil(function(@wrong_first_parametr, @second_parametr))
  end
end
