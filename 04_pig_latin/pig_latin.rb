# frozen_string_literal: true

VOWELS = %w[a e i o u].freeze

def translate(string)
  phrase = string.split(' ')
  phrase.map! do |word|
    letters = word.split('')
    found_vowel = check_for_vowels(letters)
    found_vowel += 1 if letters[found_vowel] == 'u'
    letters.rotate!(found_vowel).push('ay').join
  end
  check_for_uppercase_letter(phrase)
  phrase.join(' ')
end

def check_for_vowels(letters)
  letters.index { |letter| VOWELS.include?(letter) }
end

def check_for_uppercase_letter(phrase)
  phrase.each { |word| word.downcase!.capitalize! if word =~ /[A-Z]/ }
end