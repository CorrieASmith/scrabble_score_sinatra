require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')
also_reload('lib/**/*.rb')
# also_reload('views/layout.erb')

get('/') do
  erb(:index)
end

get('/scrabble') do
  @score = params.fetch('scrabble').scrabble_score()
  erb(:score)
end
