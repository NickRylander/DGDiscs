require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "dgdiscs_secret"
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def currect_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
      # if @current_user is nil, set User.find(...) if there is a session
    end

    def logged_in?  # forced into a boolean value as indicatied by the '?'
      !!current_user
      # Is the vairable set? If so, evaluate true, if not, evaluate false. The double negation forces the return value of a boolean
    end
  end
end
