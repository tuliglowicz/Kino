class UserMailer < ActionMailer::Base
  default :from => "zpi.projekt.2011@gmail.com"
  
  def registration_confirmation(user)
    
    @login = user.login
    mail(:to => user.email, :subject => "Witaj w serwisie cinematohloix.pl")    
  end
  
  def remind_password(login, email, new_password)    
    @login = login
    @new_password = new_password
    mail(:to => email, :subject => 'Cinematoholix.pl przypomnienie hasla')
  end
end
