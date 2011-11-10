# encoding: UTF-8
class TicketPdf < Prawn::Document
  def initialize(ticket, view)
    super(top_margin: 50)
    @ticket = ticket
    @view = view
    order_number
    mytable
    mypicture
  end
  
  def order_number
    text "Bilet", size: 30, style: :bold
    text "Numer biletu #{@ticket.id}", size: 10, style: :bold
    text "Cena #{@ticket.price.to_s} zl", size: 10, style: :bold
  end
  
  def mytable
    move_down 50
    font "Helvetica"
    font_size 10
    text "------------------------------------------------------", size: 30, style: :bold
    table line_ticke_row do
      row(0).font_style = :bold
      columns(1..2).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
    text "------------------------------------------------------", size: 30, style: :bold
  end
  
  def line_ticke_row
    cinema_noletters = @ticket.seance.cinema_film.cinema.name
    cinema_noletters["ą"] = "a"
    [["Nr biletu", "Kino", "Film", "Data seansu", "Godzina seansu", "Sala", "Rząd", "Miejsce", "Cena", "Typ biletu"]] + 
    [[@ticket.reservation_id.to_s, cinema_noletters, @ticket.seance.cinema_film.film.title.to_s, @ticket.seance.date_from, @ticket.seance.time_from.strftime("%H:%M"), @ticket.seat.room.number.to_s, @ticket.seat.row.to_s, @ticket.seat.column.to_s, @ticket.price.to_s, @ticket.ticket_type.name.to_s]]
  end
  
  def mypicture
    stroke_bounds()
    horizontal_line 100, 100, :at => 75 
  end
  
end