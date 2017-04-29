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
  erb :definition_form
end

post '/definitions' do
  @definition = Definition.new(:new_definition => params.fetch('definition'))
  @definition.save
  @word = Word.find(params.fetch('word_id').to_i)
  erb :word_details
end

get '/word_details' do
  @definitions = Definition.all
  erb :word_details
end
