enable :sessions

get '/' do
 erb :index
end

get '/admin' do
  erb :login
end

post '/logout' do
  session.clear
  redirect '/admin'
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user != nil
    if User.authenticate(params[:username],params[:password])
      session[:id] = @user.id
      erb :login
    else
      @error = "Invalid password."
      erb :login
    end
  @error = "Invalid username."
  erb :login
  end
end
