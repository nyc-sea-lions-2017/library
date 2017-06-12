get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect '/'
    else
      @errors = ['Invalid email/password']
      erb :'/sessions/new'
    end
end


get '/logout' do
  session.clear
  redirect '/sessions/new'
end
