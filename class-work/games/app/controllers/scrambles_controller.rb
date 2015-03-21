class ScramblesController < ApplicationController
  def new
	  # @words = "TESTING!"
  	# @words = Wordnik.word.get_definitions('hysterical')

  	# response = JSON.load(RestClient.get("http://api.wordnik.com:80/v4/words.json/randomWord?hasDictionaryDef=false&minCorpusCount=0&maxCorpusCount=-1&minDictionaryCount=50&maxDictionaryCount=-1&minLength=5&maxLength=-1&api_key=329c585d08fe18a5512080a825106a6d1852fd5f9f9646151"))

   #  @words = response['word']
   words = Word.random
   @random_word = words.name

  end

  def show
  end

  def fetch_word

  end


end
