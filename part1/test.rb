# frozen_string_literal: true

require './part1/main.rb'
require 'minitest/autorun'

class TestExampleFunction < Minitest::Test
  def setup
    @result = 4.8025
    @first_parametr = 5
    @wrong_first_parametr = 'aa'
    @second_parametr = 6
  end

  def test_standart_work
    assert_in_delta(result, function(first_parametr, second_parametr), 0.001)
  end

  def test_for_nil
    assert_nil(function(wrong_first_parametr, second_parametr))
  end

  private

  attr_reader :result, :first_parametr, :second_parametr, :wrong_first_parametr
end
