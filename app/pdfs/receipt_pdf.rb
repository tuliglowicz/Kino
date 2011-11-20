# encoding: UTF-8
class ReceiptPdf < Prawn::Document
  def initialize(receipt, comapny, ticket, view)
    super(top_margin: 5, :page_size => [160,320], left_margin: 5, right_margin: 5)
    @comapny = comapny
    @receipt = receipt
    @ticket = ticket
    @view = view
    #@receipt.each do |w|
      order_number
    #  start_new_page
    #end
    
    #mytable
    #mypicture
    
  end
  
  def order_number
    #receiptC = w 
    font_families.update("arial" => {
                             :bold  => "public/fonts/receipt.ttf",
                             :italic => "public/fonts/receipt.ttf",
                             :bold_italic => "public/fonts/receipt.ttf",
                             :normal => "public/fonts/receipt.ttf" })
    font "arial", :size => 6
    text "#{@comapny.name}", size: 6, style: :bold, :align => :center
    text "ul.#{@comapny.address}", size: 6, style: :bold, :align => :center
    text "#{@comapny.nip}", size: 6, style: :bold, :align => :center
    move_down 5
    text "#{@receipt.first.date}", size: 6, style: :bold, :align => :left
    draw_text "#{Time.now.strftime("%H:%M")}" , size: 6, style: :bold , :at => [130,250], :valign => :right
    font "arial", :size => 6
    move_down 4
    text "Kasjer #{@receipt.first.worker_id}", size: 6, style: :bold, :align => :left
    draw_text "kasa #{@receipt.first.cash_register}" , size: 6, style: :bold , :at => [126,240], :valign => :right
    font "arial", :size => 6
    move_down 5
    text "Kino", size: 6, style: :bold, :align => :left
    font_families.update("arial" => {
                             :bold  => "public/fonts/DejaVuSans.ttf",
                             :italic => "public/fonts/DejaVuSans.ttf",
                             :bold_italic => "public/fonts/DejaVuSans.ttf",
                             :normal => "public/fonts/DejaVuSans.ttf" })
    font "arial", :size => 6
    text "#{@ticket.first.seance.cinema_film.cinema.name}", size: 6, style: :bold, :align => :left
    
    @ticket.each do |w|
          table line_ticket_row(w)  do
            row(0).font_style = :bold
            columns(1..2).align = :center
            cells.padding = 2
            self.row_colors = ["FFFFFF", "FFFFFF"]
            self.header = true
            style(row(0), :border_colors => 'FFFFFF')
            style(row(1), :border_colors => 'FFFFFF')
          end
          
          table line_ticket_row2(w) do
            row(0).font_style = :bold
            columns(1..2).align = :center
            columns(3).align = :right
            row(1).valign = :top
            cells.padding = 2
            self.row_colors = ["FFFFFF", "FFFFFF"]
            self.header = true
            style(row(0), :border_colors => 'FFFFFF')
            style(row(1), :border_colors => 'FFFFFF')
            self.width = 149
          end
    #  start_new_page
    end
    
     font_families.update("arial" => {
                             :bold  => "public/fonts/receipt.ttf",
                             :italic => "public/fonts/receipt.ttf",
                             :bold_italic => "public/fonts/receipt.ttf",
                             :normal => "public/fonts/receipt.ttf" })
    font "arial", :size => 6
    move_down 5
    text "Sprzedane", size: 6, style: :bold, :align => :center
    move_down 5
    text "SP.OP.A", size: 6, style: :bold, :align => :left
    value0 = @comapny.vat/100.0
    value1 = @receipt.first.sum - (@receipt.first.sum*value0)
    draw_text "#{value1.round(2)}" , size: 6, style: :bold , :at => [127,93], :valign => :right
    font "arial", :size => 6
    move_down 4
    text "PTU A #{@comapny.vat}%", size: 6, style: :bold, :align => :left
    value3 = @receipt.first.sum - value1
    draw_text "#{value3.round(2)}" , size: 6, style: :bold , :at => [127,83], :valign => :right
    move_down 4
    text "SUMA PTU", size: 6, style: :bold, :align => :left
    value3 = @receipt.first.sum - value1
    draw_text "#{value3.round(2)}" , size: 6, style: :bold , :at => [127,72], :valign => :right
    font "arial", :size => 6
    move_down 4
    text "SUMA", size: 6, style: :bold, :align => :left
    draw_text "#{@receipt.first.sum}" , size: 6, style: :bold , :at => [127,62], :valign => :right
    font "arial", :size => 6
    move_down 4
    text "GOTOWKA", size: 6, style: :bold, :align => :left
    draw_text "200" , size: 6, style: :bold , :at => [127,52], :valign => :right
    font "arial", :size => 6
    move_down 4
    text "RESZTA", size: 6, style: :bold, :align => :left
    value4 = 200 - @receipt.first.sum
    draw_text "#{value4}" , size: 6, style: :bold , :at => [127,42], :valign => :right
    font "arial", :size => 6
    move_down 5
    text "NR PARAGONU #{@receipt.first.id+1000123}", size: 6, style: :bold, :align => :center
    
  end
  
  def line_ticket_row(w)
    myticket=w
    font "arial", :size => 4
    
    cinema_noletters = myticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [[]] + 
    [[ myticket.ticket_number + 1000234512342342, myticket.seance.cinema_film.film.title]]
  end 
  
  def line_ticket_row2(w)
    myticket=w
    font "arial", :size => 4
    z = ""+ myticket.price.to_s
    cinema_noletters = myticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [[]] + 
    [[myticket.seance.date_from, myticket.seance.time_from.strftime("%H:%M"), myticket.ticket_type.name, z+" zł"]]
  end
  
end