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
  
  def send_bought_tickets(first_name, last_name, email, tickets)
    
    @first_name = first_name
    @last_name = last_name
  
    i = 1
    tickets.each do |t|
      attachments['bilet_' + i.to_s + '.pdf'] = get_pdf
      i = i+1      
    end
    mail(:to => email, :subject => 'Zakupione bilety w serwisie cinematoholix.pl')
  end
end
