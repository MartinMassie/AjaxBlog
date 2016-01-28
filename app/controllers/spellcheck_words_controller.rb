require "#{Rails.root}/app/models/web_spellchecker.rb"
class SpellcheckWordsController < ApplicationController
  def spellcheck
	wCheck = Web_Spellchecker.new
	word = params[:term]

	returnHash= {
	"term"=> word,
	"known"=> true,
	"suggestions"=> wCheck.correct(word)}	

	render json: returnHash
	#puts "We want to check the word " + word
  end
end
