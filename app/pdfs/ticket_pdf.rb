# encoding: UTF-8
class TicketPdf < Prawn::Document
  def initialize(ticket, view)
    super(top_margin: 50)
    @ticket = ticket
    @view = view
    font_families.update("arial" => {
                             :bold  => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf",
                             :italic => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf",
                             :bold_italic => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf",
                             :normal => "#{Prawn::BASEDIR}/data/fonts/DejaVuSans.ttf" })
    font "arial"
    order_number
    mytable
    mypicture
  end
  
  def order_number
    text "------------------------------------------------------------", size: 25, style: :bold
    file = "#{Prawn::BASEDIR}/data/images/cinematoholix.png" # do tego folderu trzeba wrzucić plik cinematoholix, który dodałem w public/images/pic
    #image file, :at => [20,650], :background => file
    image file, :background => file, :position => :left,   :vposition => "20"
    move_down 20
    text "Bilet dla użytkownika: #{@ticket.user.first_name} #{@ticket.user.last_name}", size: 14, style: :bold
  end
  
  def mytable
    #move_down 20
    
    table line_ticke_row  do
      row(0).font_style = :bold
      columns(1..2).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
      style(row(0), :border_colors => 'FFFFFF')
      style(row(1), :border_colors => 'FFFFFF')
    end
    
    text "------------------------------------------------------------", size: 25, style: :bold
  end
  
  def line_ticke_row
    
    cinema_noletters = @ticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [["Nr biletu", "Kino", "Film", "Data seansu", "Godzina seansu", "Sala", "Miejsce", "Cena", "Typ biletu"]] + 
    [[@ticket.ticket_number, cinema_noletters, @ticket.seance.cinema_film.film.title, @ticket.seance.date_from, @ticket.seance.time_from.strftime("%H:%M"), @ticket.seance.room.number, @ticket.seat.to_s, @ticket.price, @ticket.ticket_type.name]]
  end
  
  def mypicture
    
    
    #stroke_bounds()
    horizontal_line 100, 100, :at => 75 
  end
  
end