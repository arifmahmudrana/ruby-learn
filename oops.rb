# frozen_string_literal: true

# require 'json'

# class Api
#   attr_accessor :url, :key

#   # def initialize(url, key)
#   #   @url = url
#   #   @key = key
#   # end

#   def initialize(url, key)
#     @url = url
#     @key = key
#   end

#   def test_calling
#     puts 'Class instance method called'
#   end

#   def as_json
#     {
#       url: @url,
#       key: @key,
#       description: 'Something description'
#     }
#   end

#   def to_json(*_args)
#     as_json.to_json
#   end
# end
# api = Api.new 'https://www.google.com/', 'secret'
# # api.url = 'https://www.google.com/'
# # api.key = 'secret'
# p api.to_json

# frozen_string_literal: true

class Api
  attr_accessor :url, :key
  def initialize(url:, key: 'secret')
    @url = url
    @key = key
    test_calling
    method_name
    method_names
  end

  def test_calling
    puts 'Class instance method called'
  end

  private

  def method_name
    puts 'puts from private'
  end

  protected

  def method_names
    puts 'puts from protected'
  end
end

class Sms < Api
  def initialize(url:, key: 'secret2')
    super(url: url, key: key)
    puts 'SMS'
    method_name
  end
end
sms = Sms.new(url: 'https://www.google.com/', key: 'secret1')
p sms
