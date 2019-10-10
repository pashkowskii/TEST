def ftoc(temp_in_fahrenheit)
  (temp_in_fahrenheit - 32.0) * (5.0 / 9.0)
end

def ctof(temp_in_celsius)
  temp_in_celsius * (9.0 / 5.0) + 32.0
end
