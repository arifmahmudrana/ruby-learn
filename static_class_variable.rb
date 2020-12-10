# frozen_string_literal: true

class A
  @@ololo = 1

  # instance level

  # getter
  def ololo
    @@ololo
  end

  # setter
  def ololo=(trololo)
    @@ololo = trololo
  end

  # and class level
  # if you need it

  # getter
  def self.ololo
    @@ololo
  end

  # setter
  def self.ololo=(trololo)
    @@ololo = trololo
  end
end

# a = A.new
# b = A.new
# p A.ololo
# #=> 1
# p a.ololo
# #=> 1
# A.ololo = 100
# p A.ololo
# #=> 100
# p a.ololo
# #=> 100
# p b.ololo
# #=> 100
# a.ololo = 4
# p A.ololo
# #=> 4

class Post
  class << self
    def print_author
      puts 'The author of all posts is Jimmy'
    end
  end
end

# p Post.print_author
