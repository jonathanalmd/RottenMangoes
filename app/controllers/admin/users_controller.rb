class Admin::UsersController < ApplicationController
  before_action :auth_admin

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # Flash notice/alert: app/views/layouts/application.html.erb
      redirect_to admin_users_path, notice: "#{@user.full_name} was updated successfully!"
    else
      render :index
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to admin_users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end

  def auth_admin
    if !user_is_admin?
      flash[:error] = "You must log in as Admin to access this page, Mr. Not Admin Guy!"
      redirect_to new_session_path
    end
  end

  protected
  # Strong params
  # Whitelist attributes within the context in which they will be used, rather than requiring a global whitelisting within the model.
  def user_params
    # Required parameter user
    # Permit indentifies the list of allowed parameter keys

    params.require(:user).permit(:email,:firstname, :lastname, :password, :password_confirmation, :admin)
  end
end

