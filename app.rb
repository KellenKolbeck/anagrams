require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/words') do
  @user_word = params.fetch('user_word')
  @words = params.fetch('words')
  @anagram_list = @user_word.anagrams(@words)
  erb(:words)
end
