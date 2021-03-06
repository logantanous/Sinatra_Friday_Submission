require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('./lib/word')
require('pry')

#Still figuring out class methods
#I will review them over the weekend and implement after I have learned how to use them

@@item
@@list
@@name
@@definition

get('/') do
  @@list = Word.all()
  erb(:input)
end

get('/words/:id') do
  @item = Word.find(params[:id])
  erb(:item)
end

post('/') do
  @@name = params["name"]
  @@definition = params["definition"]
  @@item = Word.new(@@name, @@definition)
  @@item.save()
  Word.sortify()
  @@list = Word.all()
  erb(:input)
end

post('/more_definitions') do
  @@new_definition = params["definition2"]
  @@item.definition = "#{@@item.definition}<br>#{@@new_definition}"
  # binding.pry
  erb(:item)
end
