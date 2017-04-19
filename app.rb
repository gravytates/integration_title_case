require('sinatra')
require('sinatra/reloader')
require('pry')
require('rspec')
require('./lib/title_case')

get('/') do
  erb(:index)
end

get('/results') do
  @input = params.fetch('input').title_case
  erb(:results)
end
