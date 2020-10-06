class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login"
    end

    post '/login' do
        user = User.find_by(email: params[:email]) #find the user
        if user && user.authenticate(params[:password]) #authenticate the user
            session[:user_id] = user.id # log the user in and redirect
            redirect "/discs"
        else
            redirect "/login"
        end
    end

    get '/logout' do
        session.clear # clears session
        redirect "/login"
    end
end