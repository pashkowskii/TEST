# frozen_string_literal: true

class Timer
  attr_accessor :seconds
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
  result = []
  hour 
  minutes
  result.join
  end
end


