class Palindrome < ActiveRecord::Base
	def is_palindrome?
		self.word.reverse == self.word
	end

	validate do |word|
		word.errors.add(:is_palindrome?, "Error...")
	end


	
end
