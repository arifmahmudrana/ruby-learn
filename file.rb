# frozen_string_literal: true

# r - reading
# a - appending to a file
# w - just writing
# w+ - reading and writing
# a+ - reading and appending
# r+ - updating both reading and writing

# write file
# File.open('teams.txt', 'w+') { |f| f.write('some text') }

# append file
# f = File.new('teams.txt', 'a')
# f.puts(' some text again') # Adds new line at end
# f.write(' some text again') # appends without newline
# f.close

# read file
# p File.read 'teams.txt'
# File.open('teams.txt', 'r') { |f| p f.read }

# delete file
# File.delete 'teams.txt' if File.exist? 'teams.txt'
