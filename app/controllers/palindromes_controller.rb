class PalindromesController < ApplicationController
	def index
		@palindromes = Palindrome.all
	end

	def new
		@palindrome = Palindrome.new
	end

	def create
		Palindrome.create(palindromes_params)
		redirect_to palindromes_path
	end

	def palindromes_params
		params.require(:palindrome).permit(:word)
	end

end
