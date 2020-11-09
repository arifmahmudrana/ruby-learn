# frozen_string_literal: true

# p [1, 2, 3, 4, 1].grep(-1)
# p(['hey.rb', 'there.rb', 'index.html'].select { |x| x =~ /\.rb/ }.map { |x| x[0..-4] })
# p ['hey.rb', 'there.rb', 'index.html'].grep(/(.*)\.rb/){$1}
# p ['hey.rbs', 'there.rbs', 'index.html'].grep(/(.*)\.rb/) { Regexp.last_match(1) }
m = ['hey.rbs', 'there.rbs', 'index.html'].grep(/((.*)\.rb)s/) { Regexp.last_match(1) }
p m
