# frozen_string_literal: true

LITTLE_WORDS = %w[a an and the in of].freeze

class Book
  attr_reader :title

  def title=(new_title)
    words = new_title.split(' ')
    words = [words.first.capitalize] + check_for_little_words(words)
    @title = words.join(' ')
  end

  def check_for_little_words(words)
    words[1..-1].map { |word| LITTLE_WORDS.include?(word) ? word : word.capitalize }
  end
end
