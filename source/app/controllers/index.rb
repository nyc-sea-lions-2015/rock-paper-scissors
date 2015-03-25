get '/' do

  erb :index
end

get '/users' do
	@users = User.all
	erb :'artists/index'
end

get '/users/:id' do
	@user = User.find_or_create_by(:id => params[:id])
	erb :'user/show'
end
