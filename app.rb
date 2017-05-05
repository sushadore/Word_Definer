require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require './lib/definition'
require './lib/word'
also_reload 'lib/**/*.rb'

get '/' do
  @words = Word.all
  erb :index
end

get '/words/new' do
  erb :words_form
end

get '/words' do
  @words = Word.all
  erb :words
end

post '/words' do
  @word = Word.new(:new_word => params.fetch('word'))
  @word.save
  @words = Word.all
  erb :word_definitions_form
end

get '/words/:id' do
  @word = Word.find(params.fetch('id').to_i)
  erb :word
end

get '/words/:id/definitions/new' do
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
