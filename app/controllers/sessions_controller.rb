class SessionsController < ApplicationController
  
  def new
  
  end

  def create
    # Find user using email input
    user = User.find_by(email: params[:email])

    # Make sure that user exists and can be authenticated
    if user && user.authenticate(params[:password])
      # SUCCESS: set :user_id key in sessions hash to the users id
      session[:user_id] = user.id
      redirect_to movies_path
    else
      # FAILURE
      render :new
    end

  end

end
