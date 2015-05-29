require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_puzzle')

get('/') do 
  erb(:index)
end

get('/word_puzzle') do 
  words_to_puzzle = params.fetch('words_to_puzzle')
  @puzzle = words_to_puzzle.word_puzzle()
  erb(:word_puzzle)
end