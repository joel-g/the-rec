get '/entries/' do
  @entries = Entry.all
  erb :'entries/index'
end
