# frozen_string_literal: true

class Temperature
  class << self
    def from_fahrenheit(temp)
      Temperature.new(fahrenheit: temp)
    end

    def from_celsius(temp)
      Temperature.new(celsius: temp)
    end
  end

  def initialize(options = {})
    @fahrenheit = options[:fahrenheit]
    @celsius = options[:celsius]
  end

  def in_fahrenheit
    return @fahrenheit if @fahrenheit

    (@celsius * (9.0 / 5.0)) + 32
  end

  def in_celsius
    return @celsius if @celsius

    (@fahrenheit - 32) * 5.0 / 9.0
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(celsius: temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(fahrenheit: temp)
  end
end