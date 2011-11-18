# encoding: UTF-8
class TicketPdf < Prawn::Document
  def initialize(ticket, view)
    super(top_margin: 20)
    @ticket = ticket
    @view = view
    
    order_number
    mytable
    mypicture
    
  end
  
  def order_number
    font_families.update("arial" => {
                             :bold  => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf",
                             :italic => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf",
                             :bold_italic => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf",
                             :normal => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf" })
    font "arial"
    text "------------------------------------------------------------", size: 25, style: :bold
    #zakomentowane zeby przetestowac na heroku
    file = "public/images/pic/logoD.png" # do tego folderu trzeba wrzucić plik cinematoholix, który dodałem w public/images/pic
    #image file, :at => [20,650], :background => file
    #image file, :background => file, :position => :left,   :valign => :bottom
    image file, :background => file, :position => :left,   :valign => :bottom ,  :at => [320,713]
    
    font "arial", :size => 9
    text "Bilet dla użytkownika: #{@ticket.user.first_name} #{@ticket.user.last_name}", size: 9, style: :bold
    move_down 40
  end
  
  def mytable
    move_down 10
    font_families.update("BarcodeFont" => {
                             :bold  => "#{Prawn::BASEDIR}/data/fonts/code128.ttf",
                             :italic => "#{Prawn::BASEDIR}/data/fonts/code128.ttf",
                             :bold_italic => "#{Prawn::BASEDIR}/data/fonts/code128.ttf",
                             :normal => "#{Prawn::BASEDIR}/data/fonts/code128.ttf" })
    font "BarcodeFont"
    z= @ticket.ticket_number + 1000234512342342
    #text "#{z}" , size: 50, style: :bold ,  :align => :right ,  :valign => :middle
    draw_text "#{z}" , size: 50, style: :bold , :at => [305,630], :valign => :middle
    font "arial", :size => 2
    draw_text "#{z}" , size: 11, style: :bold , :at => [355,620], :valign => :middle
    
    font "arial", :size => 10
    move_up 50
    
    table line_ticket_row  do
      row(0).font_style = :bold
      columns(1..2).align = :center
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
      style(row(0), :border_colors => 'FFFFFF')
      style(row(1), :border_colors => 'FFFFFF')
    end
    
    table line_ticket_row2 do
      row(0).font_style = :bold
      columns(1..3).align = :center
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
      style(row(0), :border_colors => 'FFFFFF')
      style(row(1), :border_colors => 'FFFFFF')
    end
    
    
  end
  
  def line_ticket_row
    font "arial", :size => 9
    
    cinema_noletters = @ticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [[ "Kino", "Film", "Data seansu", ]] + 
    [[ cinema_noletters, @ticket.seance.cinema_film.film.title, @ticket.seance.date_from]]
  end
  
  def line_ticket_row2
    font "arial", :size => 9
    
    cinema_noletters = @ticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [["Godzina seansu", "Sala", "Miejsce", "Cena", "Typ biletu"]] + 
    [[ @ticket.seance.time_from.strftime("%H:%M"), @ticket.seance.room.number, @ticket.seat.to_s, @ticket.price, @ticket.ticket_type.name]]
  end
  
  def mypicture
    
    font "arial"
    text "------------------------------------------------------------", size: 25, style: :bold
  end
  
end