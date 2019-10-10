# frozen_string_literal: true

def translate(string)
  vowels = %w[a e i o u A E I O U]
  phrase = string.split(' ')
  phrase.map! do |word|
    letters = word.split('')
    find_vowel = letters.index do |letter|
      vowels.include?(letter)
    end

    find_vowel += 1 if letters[find_vowel] == 'u'
    letters.rotate!(find_vowel)
    letters.push('ay')
    letters.join
  end
  phrase.each do |word|
    word.downcase!.capitalize! if word =~ /[A-Z]/
  end
  phrase.join(' ')
end

translate('Accelerate through')