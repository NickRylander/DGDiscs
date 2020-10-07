class DiscsController < ApplicationController

    get '/discs' do # displays a list of all discs
        @discs = Disc.all # sets an instance variable to all the disc objects
        erb :"discs/index"
    end

    get '/discs/new' do # displays a from to make and save another disc
        erb :"discs/new"
    end

    get '/discs/:id' do # displays one insance of a disc
        
    end

    get '/discs/:id/edit' do # displays a form to edit a disc
        
    end

    post '/discs' do # creates an instance of a new disc
        @discs = Disc.new(params) #sets all attributes
    end

    patch '/discs/:id' do # updates an instance of a disc
        
    end

    delete '/discs/:id' do # deletes an isntance of a disc
        
    end
end

# t.string "name" 
# t.string "brand"
# t.string "color"
# t.integer "speed" 1-14
# t.integer "glide" 1-7
# t.integer "turn" 1 to -5
# t.integer "fade" 0 to 5

# name: => params[:name], brand: => params[:brand], color: => params[:color], speed: => params[:speed], glide: => params[:glide], turn: => params[:turn], fade: => params[:fade]
