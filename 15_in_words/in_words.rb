# frozen_string_literal: true

ONES = {
    0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine'
}.freeze

TENS = {
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety'
}.freeze

TEENS = {
      10 => 'ten',
      11 => 'eleven',
      12 => 'twelve',
      13 => 'thirteen',
      14 => 'fourteen',
      15 => 'fifteen',
      16 => 'sixteen',
      17 => 'seventeen',
      18 => 'eighteen',
      19 => 'nineteen'
}.freeze

MAGNITUDES = {
      100 => 'hundred',
      1000 => 'thousand',
      1_000_000 => 'million',
      1_000_000_000 => 'billion',
      1_000_000_000_000 => 'trillion'
}.freeze

class Integer
  def in_words
    if self < 10
      ONES[self]
    elsif self < 20
      TEENS[self]
    elsif self < 100
      if (self % 10).zero?
        TENS[self]
      else
        tens, ones = self.divmod(10)
        tens *= 10
        TENS[tens] + ' ' + ONES[ones]
      end
    else
      mag = find_magnitude
      quotient, remainder = divmod(mag)
      if remainder.zero?
        ONES[quotient] + ' ' + MAGNITUDES[mag]
      else
        quotient.in_words + ' ' + MAGNITUDES[mag] + ' ' + remainder.in_words
      end
    end
  end

  def find_magnitude
    MAGNITUDES.keys.take_while { |m| m <= self }.last
  end
end