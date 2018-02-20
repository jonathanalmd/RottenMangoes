class UserMailer < ApplicationMailer
  default from: 'alert@rm.com'
  layout "mailer"
 
  def welcome_mail(user)
    @user = user
    @url  = 'http://localhost:3000/sessions/new'
    mail(to: @user.email, subject: 'Welcome to Rotten Mangoes!')
  end

  def delete_mail(user)
    @user = user
    mail(to: @user.email, subject: 'Your account has been deleted. We will not miss you.')
  end

end
