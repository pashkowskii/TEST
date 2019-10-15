# frozen_string_literal: true

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = (@seconds / 60) % 60
    hours = @seconds / (60**2)
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(num)
    return '0' + num.to_s if num < 10

    num.to_s if num >= 10
  end
end


