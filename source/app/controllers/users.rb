get '/users' do
	@users = User.all
	erb :'artists/index'
end

get 'users/new' do
	erb :'users/new'
end

get '/users/:id/edit' do
	@user = User.find_by(:id => params[:id])
	erb :'user/edit'
end

get '/users/:id' do
	@user = User.find_by(:id => params[:id])
	erb :'user/show'
end

put '/users/:id' do
	@user = User.find_by(:id => params[:id])
	if @user.update_attributes = params
		if @user.save
			redirect 'users/index'
		else
			[500, "Something went wrong"]
		end
	else
		[404, "That user does not exist"]
	end
end

post '/users' do
	@user = User.new(:name => params(:name))
	if @user.save
		redirect "/users/#{@user.id}"
	else
		[404, "This user oculd not be created"]
	end
end

delete 'users/:id/delete' do
	@user.User.find_by(:id => params[:id])
	@user.destroy

	redirect '/users'
end
end