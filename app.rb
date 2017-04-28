require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/Word'

get '/' do
  @words = Word.all
  erb :index
end

get '/word/new' do
  erb :word_form
end

post '/word/new' do
  @word = Word.new(:new_word => params.fetch('word'))
  @word.save
  erb :word_displayed
end

get '/definition/:id/word/new' do
  @word = Word.find(params.fetch('id').to_i)
  erb :definition_form
end

post '/definition/new' do
  @definition = Definition.new(new_definition => params.fetch('definition'))
  @definition.save
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_definition(@definition)

end
