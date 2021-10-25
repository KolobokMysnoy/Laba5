# frozen_string_literal: true

require './laba5_2.rb'
require 'minitest/autorun'

class TestMeme < Minitest::Test
  
  def setup
    @needed=[];
    @result=[];
    4.times do |xa|
      str1=[];
      str2=[];
      10.times do |ind|
        word=generate_word;
        if ind.odd? then
          str2.push(word.reverse);
        else
          str2.push(word);
        end   
        str1.push(word);   
      end
      str1= str1.join(" ");
      str2=str2.join(" ");
      @needed.push(str1);
      @result.push(str2);
    end
  end

  def test_1
    assert_equal(@result,string_not_even_reverse(@needed));
  end
end
