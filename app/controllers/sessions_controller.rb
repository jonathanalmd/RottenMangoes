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
      redirect_to movies_path, notice: "Welcome back, #{user.firstname}!"
    else
      # FAILURE
      flash.now[:alert] = "Log in failed"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to movies_path, notice: "See ya!"
  end

end
