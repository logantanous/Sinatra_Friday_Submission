require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('./lib/favorite_things')
require('pry')

get('/') do
  @list = Item.all()
  erb(:input)
end

get('/items/:id') do
  @item = Item.find(params[:id])
  erb(:item)
end

post('/') do
  name = params["name"]
  rank = params["rank"]
  item = Item.new(name, rank)
  item.savy(name)
  Item.sortify()
  @list = Item.all()
  erb(:input)
end
