# frozen_string_literal: true

# begin
#   _ = 4 / 1
#   8 / 0
# rescue ZeroDivisionError => e
#   p e.backtrace
# end

begin
  _ = 8 / 0
  File.delete 'teams.txt'
rescue ZeroDivisionError => e
  p e.backtrace
rescue StandardError => e
  puts e
  p e.to_s
end
