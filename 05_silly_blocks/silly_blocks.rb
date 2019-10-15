# frozen_string_literal: true

def reverser
  str = []
  rev = yield.split(' ')
  rev.each { |word| str.push(word.reverse) }
  str.join(' ')
end

def adder(num = 1, &block)
  block.call + num
end

def repeater(num = 1, &block)
  (1..num).each { |_element| block.call }
end