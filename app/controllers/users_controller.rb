class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)

    if current_user != nil && current_user.admin
      if @user.save
        redirect_to admin_users_path, notice: "User #{@user.firstname} created!"
      else
        redirect_to admin_users_path, notice: "User creation failed"
      end
    else
      respond_to do |format|
        if @user.save
          # Tell the UserMailer to send a welcome email after save
          session[:user_id] = @user.id # auto log in
          UserMailer.welcome_mail(@user).deliver_later

          format.html { redirect_to movies_path, notice: "Welcome aboard, #{@user.firstname}!" }
          format.json { render json: @user, status: :created, location: @user }
        else
          format.html { render action: 'new' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      
      end

    end

  end

  protected

  def user_params
    params.require(:user).permit(:email,:firstname, :lastname, :password, :password_confirmation, :admin)
  end

end
