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
