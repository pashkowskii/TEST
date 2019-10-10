# frozen_string_literal: true

def reverser
  str = []
  rev = yield.split(' ')
  rev.each do |word|
    temp = word.reverse
    str.push(temp)
  end
  str.join(' ')
end

def adder(num = 1, &block)
  block.call + num
end

def repeater(num = 1, &block)
  for i in (1..num) do
    block.call
  end
end
