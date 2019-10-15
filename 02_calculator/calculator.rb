# frozen_string_literal: true

def add(first_number, second_number)
  first_number + second_number
end

def subtract(first_number, second_number)
  first_number - second_number
end

def sum(arr)
  arr.inject(0) { |sum, n| sum + n }
end

def multiply(*numbers)
  numbers.reduce(:*)
end

def power(number, pow)
  number**pow
end

def factorial(num)
  (2..num).reduce(1, :*)
end