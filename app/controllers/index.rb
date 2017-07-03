enable :sessions

get '/' do
 erb :index
end

get '/admin' do
  erb :login
end
