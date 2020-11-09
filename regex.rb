# frozen_string_literal: true

# str = 'US President-elect 12 Joe Biden is to make tackling the coronavirus pandemic his top priority following his win over Donald Trump, his team says 10'
# p str =~ /joe/i
# p str =~ /Joe/ ? 'Joe exists' : 'Joe doesn\'t exists'
# p(str.to_enum(:scan, /\d+/).map { Regexp.last_match })

# def joe_exists?(str)
#   str =~ /joes/i ? true : false
# end

# p joe_exists? str

# str = 'Hi,  From!!'
# orig_str_arr = str.split('')
# str_arr = orig_str_arr.map(&:downcase)
# acc_count = str.gsub(/[^a-zA-Z]/, '').split('')
# final_str = str.gsub(/[a-zA-Z]/, '_').split('')

# while str_arr.count('') < acc_count.count
#   puts 'Guess a letter:'
#   guess = gets.chomp.downcase

#   if str_arr.include?(guess)
#     i = str_arr.find_index(guess)
#     str_arr[i] = ''
#     final_str[i] = orig_str_arr[i]

#     puts "Bingo.. right guess The sentence now: #{final_str.join}"
#   else
#     puts 'boooo, you make a wrong guess'
#   end
# end

puts 'What is your string....'
str = gets.chomp
fake = str.gsub(/[a-zA-Z]/, '_')
match_str = str.downcase.gsub(/[^a-zA-Z]/, ' ')
while str != fake
  puts 'Guess a letter:'
  guess = gets.chomp
  index = match_str.index guess.downcase
  if index
    parts_pref = fake.slice(0, index)
    parts_suff = fake.slice(index + guess.length, fake.length)
    found_str = str.slice(index, guess.length)
    match_str = match_str.slice(0, index) + ' ' * guess.length + match_str.slice(index + guess.length, match_str.length)

    fake = parts_pref + found_str + parts_suff
    puts "Bingo.. right guess The sentence now: #{fake}"
  else
    puts 'boooo, you make a wrong guess'
  end
end
