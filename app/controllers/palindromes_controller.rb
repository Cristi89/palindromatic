class PalindromesController < ApplicationController
	def index
		@palindromes = Palindrome.all
	end

	def new
		@palindrome = Palindrome.new
	end

	def create

		palindrome = Palindrome.new(palindromes_params)

		if palindrome.save
			redirect_to palindromes_path
		else
			redirect_to new_palindrome_path
		end

	end

	def palindromes_params
		params.require(:palindrome).permit(:word)
	end


end
