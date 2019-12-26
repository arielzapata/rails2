class UserMailer < ApplicationMailer
  def new_mail(user)
    @user = user
    mail(to: @user.email, subject: 'this is an email')
  end
end
