# encoding: UTF-8
class TicketPdfAll < Prawn::Document
  def initialize(ticket, view)
    super(top_margin: 20)
    @ticket = ticket
    @view = view
    @h1 = 713
    i=0
    @ticket.each do |w|
      if i==5 
        text "------------------------------------------------------------", size: 25, style: :bold
        start_new_page
        i=0
      end
      d = 713-(i*124)
      wd = 630-(i*124)  
      order_number(w,d)
      mytable(w,wd)
      mypicture
      i=i+1
    end
    text "------------------------------------------------------------", size: 25, style: :bold
  end
  
  def order_number(w,h1)
    he1 = h1
    myticket=w
    font_families.update("arial" => {
                             :bold  => "public/fonts/DejaVuSans.ttf",
                             :italic => "public/fonts/DejaVuSans.ttf",
                             :bold_italic => "public/fonts/DejaVuSans.ttf",
                             :normal => "public/fonts/DejaVuSans.ttf" })
    font "arial"
    text "------------------------------------------------------------", size: 25, style: :bold
    #zakomentowane zeby przetestowac na heroku
    file = "public/images/pic/logoD.png" # do tego folderu trzeba wrzucić plik cinematoholix, który dodałem w public/images/pic
    #image file, :at => [20,650], :background => file
    #image file, :background => file, :position => :left,   :valign => :bottom
    image file, :background => file, :position => :left,   :valign => :bottom ,  :at => [320,he1]
    
    font "arial", :size => 9
    text "Bilet dla użytkownika: #{myticket.user.first_name} #{myticket.user.last_name}", size: 9, style: :bold
    move_down 40
  end
  
  def mytable(w,h1)
    he1 = h1
    myticket=w
    move_down 10
    font_families.update("BarcodeFont" => {
                             :bold  => "public/fonts/code128.ttf",
                             :italic => "public/fonts/code128.ttf",
                             :bold_italic => "public/fonts/code128.ttf",
                             :normal => "public/fonts/code128.ttf" })
    font "BarcodeFont"
    z= myticket.ticket_number + 1000234512342342
    #text "#{z}" , size: 50, style: :bold ,  :align => :right ,  :valign => :middle
    draw_text "#{z}" , size: 50, style: :bold , :at => [305,he1], :valign => :middle
    font "arial", :size => 2
    draw_text "#{z}" , size: 11, style: :bold , :at => [355,he1-10], :valign => :middle
    
    font "arial", :size => 10
    move_up 50
    
    table line_ticket_row(myticket)  do
      row(0).font_style = :bold
      columns(1..2).align = :center
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
      style(row(0), :border_colors => 'FFFFFF')
      style(row(1), :border_colors => 'FFFFFF')
    end
    
    table line_ticket_row2(myticket) do
      row(0).font_style = :bold
      columns(1..3).align = :center
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
      style(row(0), :border_colors => 'FFFFFF')
      style(row(1), :border_colors => 'FFFFFF')
    end
    
    
  end
  
  def line_ticket_row(w)
    myticket=w
    font "arial", :size => 9
    
    cinema_noletters = myticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [[ "Kino", "Film", "Data seansu", ]] + 
    [[ cinema_noletters, myticket.seance.cinema_film.film.title, myticket.seance.date_from]]
  end
  
  def line_ticket_row2(w)
    myticket=w
    font "arial", :size => 9
    
    cinema_noletters = myticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [["Godzina seansu", "Sala", "Miejsce", "Cena", "Typ biletu"]] + 
    [[ myticket.seance.time_from.strftime("%H:%M"), myticket.seance.room.number, myticket.seat.to_s, myticket.price, myticket.ticket_type.name]]
  end
  
  def mypicture
    
    font "arial"
    #text "------------------------------------------------------------", size: 25, style: :bold
  end
  
end