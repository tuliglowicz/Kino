# encoding: utf-8

class My_mailer

  def mail(recipient)
  	@from "sender.address@example.com"
  	@recipients recipient
  	@subject "Hi #{recipient}"
  	@body(:recipient => recipient)
  end
  	
end