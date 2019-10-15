# frozen_string_literal: true

FAHRENHEIT_CELSIUS_DIFFERENCE = 32.0
ONE_DEGREE_CELSIUS_IN_FAHRENHEIT = 1.8

def ftoc(temp_in_fahrenheit)
  ((temp_in_fahrenheit - FAHRENHEIT_CELSIUS_DIFFERENCE) / ONE_DEGREE_CELSIUS_IN_FAHRENHEIT).ceil
end

def ctof(temp_in_celsius)
  temp_in_celsius * ONE_DEGREE_CELSIUS_IN_FAHRENHEIT + FAHRENHEIT_CELSIUS_DIFFERENCE
end
