class UsermailerMailer < ApplicationMailer
	layout 'mailer'
   default from: 'notifications@example.com'
   
   def send_user_mail()
      # @user = user
      # @url  = 'http://www.gmail.com' @user.email
      # mail(to: @user.email, subject: 'Welcome to My Awesome Site')
       mail(to:"geeta@complitech.net", from:"geeta@complitech.net", subject: "testingmail",message: "hiii")

   end
   
end
