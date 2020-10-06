class DiscsController < ApplicationController

    get '/discs' do # displays a list of all discs
        @discs = Disc.all # sets an instance variable to all the disc objects
        erb :index
    end

    get '/discs/new' do # displays a from to make and save another disc
        
    end

    get '/discs/:id' do # displays one insance of a disc
        
    end

    get '/discs/:id/edit' do # displays a form to edit a disc
        
    end

    post '/discs' do # creates an instance of a new disc
        
    end

    patch '/discs/:id' do # updates an instance of a disc
        
    end

    delete '/discs/:id' do # deletes an isntance of a disc
        
    end
end