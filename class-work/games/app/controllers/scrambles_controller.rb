class ScramblesController < ApplicationController
  def new
  	words = Word.random
  	@random_word = words.name

  	def string_shuffle(s)
  		s.split("").shuffle.join
		end

		@scrambled_word	= string_shuffle(@random_word)
  end

  def show
  	require 'cgi'

  	CGI::parse(URI::parse(url).query)
		# CGI::parse('param1=value1&param2=value2&param3=value3')


  	@outcome_partial = 'win'
  	@outcome_partial = 'lose'
  end
end
