# frozen_string_literal: true

class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(key_and_value)
    if key_and_value.respond_to?(:each_pair)
      key_and_value.each_pair do |key, value|
        entries.update(key => value)
      end
    else
      entries.update(key_and_value => nil)
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(key)
    entries.key?(key)
  end

  def find(prefix)
    matching_keys = entries.keys.select { |key| key.start_with?(prefix) }
    entries.select { |key, _| matching_keys.include?(key) }
  end

  def printable
    keywords.map { |key| "[#{key}] \"#{entries[key]}\"" }.join("\n")
  end
end
