# frozen_string_literal: true

# x = [1, 2]
# p x

# y = Array.new
# y = []
# y[0] = 100
# y[10] = 200
# y.push(*y)
# y << 2
# p y
# p y.delete nil
# p y
# p y.delete_at 2
# p y
# y.delete_if { |i| i > 100 }
# p y
# tasks = ['Learn Ruby', 'Watch Liverpool matches']
# tasks.map!.with_index do |task, index|
#   "#{index + 1}: #{task}"
# end
# puts tasks.join "\n"
# p tasks.push 'Hala Madrid!!!'
# p tasks.pop
# p tasks

# Hashes modern syntax
# hashes = {
#   name: 'Resort',
#   kind: 'Hotel',
#   id: 'id',
#   semantic_version: 0
# }
# hashes = {"name" => "Resort", "kind" => "Hotel", "id" => "id", "semantic_version" => 0}
# hashes = {:name=>"Resort", :kind=>"Hotel", :id=>"id", :semantic_version=>0}
# p hashes[:semantic_version].class
# p hashes['semantic_version'.to_sym].class
# hashes.delete(:name)
# hashes.delete('name'.to_sym)
# p hashes

# hashes['name'] = 'Resort1'
# hashes['name'.to_sym] = 'Resort1'
# hashes[:name] = 'Resort2'
# p hashes

# hashes.each_key do |key|
#   puts key
#   puts hashes[key]
# end

# hashes.each_value do |value|
#   puts value
# end
# p hashes.merge(hashes.invert).keys
# p hashes.merge(hashes.invert).values
# p hashes.merge(hashes.invert).to_a
