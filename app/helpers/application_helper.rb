# encoding: utf-8
module ApplicationHelper

	def trim(txt, length)
		text = txt.split(" ")
		txt = ""
		
		for i in 0..length-1
			txt += text[i].to_s + " "
		end
		
		txt += text[i+1].to_s
		
		if text.length > length
			txt += "..."
		end
		
		return txt
	end
	
	def askToLeave
		if request.referer == "/"
			redirect_to("/403.html")
		else
			redirect_to(request.referer, :notice => "Nie masz wymaganych uprawnień!")
		end
	end
	
end
