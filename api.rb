# frozen_string_literal: true

require 'rubygems'
require 'httparty'

class EdutechinalResty
  include HTTParty
  base_uri 'edutechional-resty.herokuapp.com'

  def posts
    self.class.get '/posts.json'
  end
end

edutechinal_resty = EdutechinalResty.new
# p edutechinal_resty.posts
edutechinal_resty.posts.each do |post|
  print post['id'] # here symbol will not work as keys are string so will not work for post[:id]
  print ". title: #{post['title']} | Description: #{post['description']}"
  puts ''
end

# res = HTTParty.get 'http://edutechional-resty.herokuapp.com/posts.json'
# puts res.code, res.message, res.headers.inspect, res.body

# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   %w[questions users].each do |method|
#     define_method(method.to_s) do
#       self.class.get("/2.2/#{method}", @options)
#     end
#   end

#   def initialize(service, _page)
#     @options = {
#       query: {
#         site: service
#       }
#     }
#   end

#   def questions
#     self.class.get('/2.2/questions', @options)
#   end

#   def users
#     self.class.get('/2.2/users', @options)
#   end
# end

# stack_exchange = StackExchange.new('stackoverflow', 1)
# puts stack_exchange.questions
