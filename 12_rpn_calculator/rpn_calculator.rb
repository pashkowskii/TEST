# frozen_string_literal: true

class RPNCalculator
  def initialize
    @calculator = []
  end

  def push(operand)
    @calculator << operand
  end

  def value
    @calculator.last
  end

  def plus
    error_message

    sum = @calculator.pop + @calculator.pop

    @calculator << sum
  end

  def minus
    error_message

    first = @calculator.pop
    second = @calculator.pop
    difference = second - first

    @calculator << difference
  end

  def divide
    error_message

    @calculator = @calculator.map(&:to_f)
    divisor = @calculator.pop
    dividend = @calculator.pop
    quotient = (dividend / divisor)
    @calculator << quotient

  end

  def times
    error_message

    @calculator.map!(&:to_f)
    product = @calculator.pop * @calculator.pop

    @calculator << product
  end

  def error_message
    raise 'calculator is empty' if @calculator.size < 2
  end

  def tokens(string)
    operators = %w[+ - / *]
    string.split.map! do |i|
      if operators.include?(i)
        i.to_sym
      else
        i.to_i
      end
    end
  end

  def check_string(str)
    str !~ /\D/
  end

  def evaluate(string)
    evaluated_str = string.split(' ')
    stack = []

    evaluated_str.each do |token|
      if check_string(token)
        stack.push(token.to_i)
      elsif token == '+'
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs + rhs)
      elsif token == '*'
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs * rhs)
      elsif token == '-'
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs - rhs)
      elsif token == '/'
        rhs = stack.pop
        lhs = stack.pop
        stack.push(lhs / rhs)
      else
        'Incorrect symbol!'
      end
    end
    ("1 2 3 * + 4 5 - /").should ==
    stack.pop
  end
end
