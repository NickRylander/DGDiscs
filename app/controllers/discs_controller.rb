class DiscsController < ApplicationController

    get '/discs' do # displays a list of all discs
        redirect_if_not_logged_in
        @discs = Disc.all # sets an instance variable to all the disc objects
        @user = current_user
        erb :"discs/index"
    end

    get '/discs/new' do # displays a from to make and save another disc
        redirect_if_not_logged_in
        @user = current_user
        erb :"discs/new"
    end

    post '/discs' do # creates an instance of a new disc
        disc = Disc.new(params) #sets all attributes
        if disc.save
            disc.update(user_id: current_user.id)
            redirect "/discs/#{disc.id}"
        else
            redirect "/discs/new"
        end
    end

    get '/discs/:id' do # displays one insance of a disc
        redirect_if_not_logged_in
        @disc = Disc.find_by_id(params[:id])
        erb :"discs/show"
    end

    get '/discs/:id/edit' do # displays a form to edit a disc
        redirect_if_not_logged_in
        @users = User.all
        @disc = Disc.find_by_id(params[:id])
        if @disc.user.id == current_user.id
            erb :"discs/edit"
        else
            redirect "/discs"
        end
    end

    patch '/discs/:id' do # updates an instance of a disc
        @disc = Disc.find_by_id(params[:id])
        params.delete("_method")
        if @disc.update(params)
            redirect "/discs/#{@disc.id}"
        else
            redirect "/discs/new"
        end
    end

    delete '/discs/:id' do # deletes an isntance of a disc
        @disc = Disc.find_by_id(params[:id])
        if @disc.user.id == current_user.id
            @disc.destroy
        end
        redirect "/discs"
    end
end