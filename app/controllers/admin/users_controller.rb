class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  protected
  # Strong params
  # Whitelist attributes within the context in which they will be used, rather than requiring a global whitelisting within the model.
  def user_params
    # Required parameter user
    # Permit indentifies the list of allowed parameter keys

    params.require(:user).permit(:title, :release_date, :director, :runtime_in_minutes, :description, :poster_image_url, :image)
  end
end

