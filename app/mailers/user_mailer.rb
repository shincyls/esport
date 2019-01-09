class UserMailer < ApplicationMailer
    def forgot_password(user)
        @user = user
        @greeting = "Howdy!"
        mail(to: @user.email, :subject => 'Pickem Dota 2 Password Reset')
    end
end