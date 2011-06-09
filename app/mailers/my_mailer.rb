class MyMailer < ActionMailer::Base
  default :from => "kino@kino.pl"
  
  def mail(recipient)
	  	@recipients = recipient
	  	@subject = "Hi #{recipient}"
	  	@body = "(:recipient => recipient)"
  	end
end
