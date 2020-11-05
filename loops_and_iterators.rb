# frozen_string_literal: true

# While loop
# i = 0
# while i < 10
#   puts ' ' * i + "#{i + 1}. Hello"
#   i += 1 # ruby doesn't have increment & decrement operator
# end

# Each iterator
# 1.upto(7).each do |v|
#   puts '*' * v
# end
# 1.upto(7).each_with_index do |v, index|
#   puts ' ' * (index + 1) + '*' * v
# end
# 10.times { |j| puts "hello #{j}" }

# for in
# (1..5).each do |v|
#   puts v
# end

# fred = { person: { name: 'Fred', spouse: 'Wilma' }, children: { name: 'Pebbles' } }
# text = []
# fred.each do |type, v|
#   text.push "\n", type
#   v.each do |key, value|
#     text.push "\n#{key}: #{value}"
#   end
#   text.push "\n"
# end
# puts text.join('').strip

# p((1..5).class) # This is range to convert it to array use .to_a
# p((1..5).to_a.class)

# p (1..5).to_a.select { |x| x.even? }
# p(1..5).to_a.select(&:even?) # question mark in method is a convention that resides it's returning bool value
# a = (1..5).to_a.select do |x|
#   x.even?
# end
# p a

# name_arr = %w(arif mahmud rana)
# name_arr = %w[arif mahmud rana]
# p(name_arr.select { |part| part.length > 4 })
# p(%w[a e v r].select { |v| v =~ /[aeiou]/ })

# p(%w[1 2].map { |e| e.to_i })
# p(%w[1 2].map(&:to_i))
# p(('a'..'g').to_a.map { |i| i * 2 })
# p Hash[[1, 2.1, 3.3, 0.9].map { |x| [x, x.to_i] }]
# p Hash[%w[arif mahmud rana].map { |x| [x, x.length] }]
# p Hash[[['a', 1], ['b', 2], ['c', 3], ['d', 4]]].map { |a, b| "#{a}=#{b}" }.join('&')

p((1..5).to_a.inject(&:+))
