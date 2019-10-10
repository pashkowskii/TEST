# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  count = 0
  arr.each do |i|
    count += i
  end
  count
end

def multiply(*numbers)
  result = 1
  numbers.each { |n| result *= n }
  result
end

def power(num1, num2)
  num1**num2
end

def factorial(num)
  (2..num).reduce(1, :*)
end