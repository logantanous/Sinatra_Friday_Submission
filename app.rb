require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('./lib/word')
require('pry')

get('/') do
  @list = Word.all()
  erb(:input)
end

get('/words/:id') do
  @item = Word.find(params[:id])
  erb(:item)
end

post('/') do
  name = params["name"]
  definition = params["definition"]
  item = Word.new(name, definition)
  item.savy(name)
  Word.sortify()
  @list = Word.all()
  erb(:input)
end
