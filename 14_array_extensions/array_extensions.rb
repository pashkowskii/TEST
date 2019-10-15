# frozen_string_literal: true

class Array
  def sum
    total = 0
    each { |x| total += x }
    total
  end

  def square
    map { |x| x * x }
  end

  def square!
    map! { |x| x * x }
  end
end
