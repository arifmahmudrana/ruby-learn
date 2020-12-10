# frozen_string_literal: true

module Cream
  def cream?
    true
  end

  class Human
    include Cream

    def cream?
      true
    end

    def no_cream?
      false
    end
  end
end

class Cookie
  include Cream
end

module SomeModule
  module_function

  def param
    @param
  end

  def param=(v)
    @param = v
  end
end

module MyModule
  class << self; attr_accessor :var; end
end

module MyAnotherModule
  class << self
    attr_accessor :my_variable
  end
  self.my_variable = 2 + 2
end

module Site
  @@name = 'StackOverflow'

  def self.name=(value)
    @@name = value
  end

  def self.name
    @@name
  end
end
