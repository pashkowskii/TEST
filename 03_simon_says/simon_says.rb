# frozen_string_literal: true

def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, amount = 2)
  amount.times.collect { word }.join(' ')
end

def start_of_word(word, amount = 0)
  word.slice(0...amount)
end

def first_word(text)
  text.split.first
end

def titleize(sentence)
  little_words = %w[end over and the]
  sentence.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  end
end


