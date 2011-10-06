class UserMailer < ActionMailer::Base
  default :from => "zpi.projekt.2011@gmail.com"
  
  def registration_confirmation(user)
    
    @login = user.login
    mail(:to => user.email, :subject => "Witaj w serwisie cinematohloix.pl")    
  end
end
