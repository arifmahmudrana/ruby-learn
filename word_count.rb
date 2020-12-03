# frozen_string_literal: true

sentence = %w[Once upon a time in a land far far away]

def word_count(string)
  hash = Hash.new(0)
  string.each { |word| hash[word] += 1 }

  hash
end

p word_count(sentence)
