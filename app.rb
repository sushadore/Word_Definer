require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/Word'
require './lib/Definition'

get '/' do
  @words = Word.all
  erb :index
end

get '/word/new' do
  erb :word_form
end

post '/word' do
  @word = Word.new(:new_word => params.fetch('word'))
  @word.save
  erb :word_definitions_form
end

get 'word/:id' do
  @word = Word.find(params.fetch('id').to_i)
  erb :word
end

get '/word/:id/definitions/new' do
  @word = Word.find(params.fetch('id').to_i)
  erb :word_definitions_form
end

post '/definitions' do
  @definition = Definition.new(:new_definition => params.fetch('definition'))
  @definition.save
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_definition(@definition)
  erb :word
end

# get '/definitions' do
#   @definitions = Definition.all
#   erb :definitions
# end
