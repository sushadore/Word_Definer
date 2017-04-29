require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/Word'

get '/' do
  @words = Word.all
  erb :index
end

get '/add_word' do
  erb :word_form
end

post '/new_word' do
  @word = Word.new(:new_word => params.fetch('word'))
  @word.save
  erb :word_displayed
end
