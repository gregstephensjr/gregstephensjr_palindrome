# frozen_string_literal: true

require_relative "gregstephensjr_palindrome/version"

# module GregstephensjrPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

module GregstephensjrPalindrome
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join("").downcase
    end
end

class String
  include GregstephensjrPalindrome
end

class Integer 
  include GregstephensjrPalindrome
end