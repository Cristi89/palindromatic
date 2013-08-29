class Palindrome < ActiveRecord::Base
	validate :must_be_palindrome

	def must_be_palindrome
		if !is_palindrome?
			errors[:word] << "That's not a palindrome"
		end
	end

	def is_palindrome?
		self.word.reverse == self.word
	end

end
