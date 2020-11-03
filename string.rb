# puts 'Name an animal'
# animal = gets.chomp

# puts 'Name a noun'
# noun = gets.chomp

# p "The quick brown #{animal} jumped over the lazy #{noun}"

# puts "Hello #{2 + 2}"

# p 'A'.downcase
# p 'b'.upcase
# p 'Ab'.swapcase
# p 'Ab'.reverse
# p 'Ab'.reverse.upcase

# name = "Ruby Monstas"
# puts name.downcase! # Bang methods end with an exlamation mark, and often modify the object they are called on
# puts name

# str = "The quick brown fox jumped over the lazy dog"
# p str.sub "brown", "yellow" # without using parentheses
# p str.sub("brown", "yellow")
# p str.downcase.gsub "the", "what"

str = "   The quick brown fox jumped over the lazy dog\t\n\r "
# p str.strip
# p str.split
# p str.split.size
# p str.split ''
# p str.split /the/
# p str.split(/the/)
# p str.split 'the'
p str.split('the')
