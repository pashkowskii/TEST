# frozen_string_literal: true

class Friend
  def greeting(who = nil)
    return 'Hello!' if who.nil?

    "Hello, #{who}!"
  end
end
