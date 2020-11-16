# frozen_string_literal: true

# 10.times { |i| puts (i + 1) * 3 }

str = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis aperiam est numquam quisquam. Ad unde dolores vel quia dolor eligendi consequuntur ab optio, voluptas ullam consequatur molestias nulla non maiores cupiditate, repellat, repudiandae quod eius temporibus suscipit? Quos deleniti praesentium ratione laboriosam ex soluta? Sint natus quas velit tempore molestiae.'

# p str[10..-10]
# p str[-10, 5]

# puts 'false' if 0 # only nil and false are counted as falsy

def fizzbuzz(number)
  number.times do |i|
    i += 1
    # case i
    # when (i % 15).zero? then puts 'Fizzbuzz'
    # when (i % 5).zero? then puts 'Buzz'
    # when (i % 3).zero? then puts 'Fizz'
    # else puts i
    # end
    if (i % 15).zero?
      puts 'Fizzbuzz'
    elsif (i % 5).zero?
      puts 'Buzz'
    elsif (i % 3).zero?
      puts 'Fizz'
    else
      puts i
    end
  end
end
fizzbuzz(15)
