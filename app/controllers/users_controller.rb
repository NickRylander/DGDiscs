class UsersController < ApplicationController

    get '/signup' do
        erb :"users/signup"
    end

    post '/signup' do
        @user = User.new(params) # set new instance of User to a variable @user
        if @user && @user.save #is @user is filled out corretly and successsfully saved
            session[:user_id] = @user.id #set session
            redirect "/discs" 
        else
            erb :"users/signup" # render the erb file as the internet is stateless
        end
    end
end