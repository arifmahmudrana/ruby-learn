# frozen_string_literal: false

# class Baseball
#   def go
#     'run'
#   end
# end

# class Baseball
#   def swing
#     'Homerun'
#   end
# end

# class Baseball
#   def go
#     'runinnnnng'
#   end

#   def swing
#     'Homerun...'
#   end
# end

# p Baseball.new.swing

# class String
#   def censor(bad_words)
#     gsub! bad_words.to_s, 'CENSORED'
#   end
# end
# p 'I hate you'.censor('hate')

# require 'ostruct'

# class Author
#   attr_accessor :first_name, :last_name, :genre

#   def author
#     OpenStruct.new(
#       first_name: first_name,
#       last_name: last_name,
#       genre: genre
#     )
#   end

#   def author_combine(seprator = '')
#     [first_name, last_name, genre].join(seprator)
#   end

#   def method_missing(mehtod_name, *args, &block)
#     if mehtod_name.to_s =~ /author_(.*)/
#       author.send(Regexp.last_match(1), *args, &block)
#     else
#       super
#     end
#   end

#   def respond_to_missing?(mehtod_name, include_private = false)
#     mehtod_name.to_s.start_with?('author_') || super
#   end
# end

# author = Author.new
# author.first_name = 'Arif'
# author.last_name = 'Rana'
# author.genre = 'CSE'

# p author.respond_to?(:author_combine)
# puts author.author_combine("\t")

class Author
  genres = %w[fiction coding history]

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.fiction_details('Cal Newport')
author.coding_details('Cal Newport')
author.history_details('Cal Newport')
