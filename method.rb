# def baseball_team_list
#   p ["A's", "Angels", "Astros"]
#   nil
# end

# def baseball_team_list
#   return p ["A's", "Angels", "Astros"]
# end

# def name_count
  # return # empty return returns nil
  # return nil # return nil using return keyword
  # nil # explicitely nil
  # if nothing returned returns nil
# end

# def name_count
#   puts 'How many word\'s in your name?'
#   count = gets.chomp.to_i
#   return 'You have a long name' if count > 3

#   'Your name is Okay'
# end

# p name_count
# p :name_count.class # A method is a symbol

# class Printer
#   def self.print_by_class_method
#     'Printer by self class method class methods are called by ClassName.method name'
#   end

#   def print_by_instance_method
#     'Printer by method create instance then call method e.g i = ClassName.new then call method i.mehtod name'
#   end
# end

# # Class method calling
# p Printer.print_by_class_method
# # instance method calling but this is bad practice
# p Printer.new.print_by_instance_method
# # Create an instance
# i = Printer.new
# p i.print_by_instance_method

# Procs
# Here Proc creating an instance Proc takes a code block as an argument first are the arguments second what it returns
# full_name = Proc.new { |first, last| "Hello #{first} #{last}" }
# p full_name['Arif', 'Mahmud']
# p full_name.call('Arif', 'Mahmud')

# Without argument bar
# full_name_alt = Proc.new do
#   'Returning without argument'
# end
# Empty argument bar
# full_name_alt = Proc.new do | |
#   'Returning without argument'
# end
# p full_name_alt[]
# p full_name_alt.call()

# Lambdas
# full_name = lambda { |first, last| "Hello #{first} #{last}" }
# full_name = ->(first, last) { "Hello from Lambdas -> #{first} #{last}" }
# p full_name['Arif', 'Mahmud']
# p full_name.call('Arif', 'Mahmud')

# Procs vs Lambdas
# 1. arguments count if lambdas argument e.g expecting 1 argument & it gets 2 then it will throw argument mismatch error where in Procs it ignores
# 2. Return behaviour
# function doesn't skip on lambda return
# def method_name
#   x = ->() {  }
#   x.call
#   p 'Prints text'
# end
# function skips on proc return if doen't return then prints but if return then skips next statements
# def method_name
#   x = Proc.new { return }
#   x.call
#   p 'Does not Print text'
# end
# method_name

# argument parenthesis
# def full_name(first, last)
#   "Hello #{first} #{last}"
# end
# p full_name('Arif Mahmud', 'Rana')

# argument without parenthesis but not good practice
# def full_name first, last
#   "Hello #{first} #{last}"
# end
# p full_name 'Arif Mahmud', 'Rana'

# named argument benifit parameter order doesn't matter
# def full_name(last:, first:)
#   "Hello #{first} #{last}"
# end
# p full_name(first: 'Arif Mahmud', last: 'Rana')

# Splat operator
# def tasks(first, *items)
#   p first
#   p items
# end
# tasks 'Learn Ruby', 'Learn Rails', 'Whatever'

# Double splat
# def print_list_of(page, **books_and_articles)
#   puts page
#   books_and_articles.each do |book, article|
#     puts book
#     puts article
#     puts "\n"
#   end
# end
# As an argument, we define a hash in which we will write books and articles.
# books_and_articles_we_love = {
#   "Ruby on Rails 4": "What is webpack?",
#   "Ruby essentials": "What is Ruby Object Model?",
#   "My God": "What is the hell?",
#   "Javascript essentials": "What is Object?"
# }

# print_list_of 1, **books_and_articles_we_love

# def foo(a, *b, **c)
#   [a, b, c]
# end
# p foo 10
# p foo 10, 20, 30
# p foo 10, 20, 30, d: 40, e: 50
# p foo 10, d: 40, e: 50
# p foo 10, {d: 40, e: 50}, f: 60

def foo(a:)
  a
end
p foo a: 50
# a = {:a => 20}
a = {a: 20}
p(foo(**a)) # splat operator as parameter spreads the hash
