# encoding: UTF-8
class SeanceVerifier 
  
  def self.verify_status_state_and_cancel_tickets(seance)
    if seance
      
       seance_time = Time.new(seance.date_from.year,
                              seance.date_from.month,
                              seance.date_from.day,
                              seance.time_from.hour,
                              seance.time_from.min,
                              seance.time_from.sec)
                                
      if !seance.checked && seance_time <= Time.now + 30.minutes           
          seance.update_attribute(:checked, true)
          seance_tickets = Ticket.where(:seance_id => seance.id, :bought => false)
          
          if seance_tickets
            seance_tickets.each { |st| 
              st.update_attribute(:cancelled, true)
            }
          end
     end
   end
    
  end 
  
end