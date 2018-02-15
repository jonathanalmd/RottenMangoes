class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if current_user.admin
      if @user.save
        redirect_to admin_users_path, notice: "User #{@user.firstname} created!"
      else
        redirect_to admin_users_path, notice: "User creation failed"
      end
    else
      if @user.save
        session[:user_id] = @user.id # auto log in
        redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!"
      else
        render :new
      end
    end
  end

  protected

  def user_params
    params.require(:user).permit(:email,:firstname, :lastname, :password, :password_confirmation, :admin)
  end

end
