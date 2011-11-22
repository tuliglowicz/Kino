# encoding: UTF-8
class ReceiptPdf < Prawn::Document
  def initialize(receipt, comapny, ticket, view)
    super(top_margin: 5, bottom_margin: 7, :page_size => [160,315], left_margin: 5, right_margin: 5)
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
    font_families.update("myfont" => {
                             :bold  => "public/fonts/DejaVuSans.ttf",
                             :italic => "public/fonts/DejaVuSans.ttf",
                             :bold_italic => "public/fonts/DejaVuSans.ttf",
                             :normal => "public/fonts/DejaVuSans.ttf" })
    font "arial", :size => 6 
    text "#{@comapny.name}", size: 6, style: :bold, :align => :center
    text "ul.#{@comapny.address}", size: 6, style: :bold, :align => :center
    text "#{@comapny.nip}", size: 6, style: :bold, :align => :center
    
    move_down 3
    text "PARAGON FISKALNY", size: 10, style: :bold, :align => :center
    text "------------------------------------", size: 6, style: :bold, :align => :center
    table line_ticket_row4  do
            row(0).font_style = :bold
            columns(0).align = :left
            columns(1).align = :right
            cells.padding = 2
            self.row_colors = ["FFFFFF", "FFFFFF"]
            self.header = true
            style(row(0), :border_colors => 'FFFFFF')
            style(row(1), :border_colors => 'FFFFFF')
            self.width = 149
    end
    table line_ticket_row5  do
            row(0).font_style = :bold
            columns(0).align = :left
            columns(1).align = :left
            columns(0).width = 20
            cells.padding = 2
            self.row_colors = ["FFFFFF", "FFFFFF"]
            self.header = true
            style(row(0), :border_colors => 'FFFFFF')
            style(row(1), :border_colors => 'FFFFFF')
            self.width = 149
    end
    text "------------------------------------", size: 6, style: :bold, :align => :center
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
    text "------------------------------------", size: 6, style: :bold, :align => :center
    table line_ticket_row3  do
            row(0).font_style = :bold
            columns(1..6).align = :left
            columns(1..5).align = :right
            cells.padding = 2
            self.row_colors = ["FFFFFF", "FFFFFF"]
            self.header = true
            style(row(0), :border_colors => 'FFFFFF')
            style(row(1), :border_colors => 'FFFFFF')
            style(row(2), :border_colors => 'FFFFFF')
            style(row(3), :border_colors => 'FFFFFF')
            style(row(4), :border_colors => 'FFFFFF')
            style(row(5), :border_colors => 'FFFFFF')
            self.width = 149
    end
    text "------------------------------------", size: 6, style: :bold, :align => :center
    move_down 5
    font_families.update("BarcodeFont" => {
                             :bold  => "public/fonts/code128.ttf",
                             :italic => "public/fonts/code128.ttf",
                             :bold_italic => "public/fonts/code128.ttf",
                             :normal => "public/fonts/code128.ttf" })
    font "BarcodeFont"
    z= @receipt.first.id+10001231243443
    #text "#{z}" , size: 50, style: :bold ,  :align => :right ,  :valign => :middle
    draw_text "#{z}" , size: 30, style: :bold , :at => [20,5], :valign => :middle
    font "arial"
    draw_text "#{z}" , size: 6, style: :bold , :at => [47,0], :valign => :middle
    
  end
  
  def line_ticket_row(w)
    myticket=w
    font "arial", :size => 5
    
    cinema_noletters = myticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [[]] + 
    [["Nr",myticket.ticket_number + 1000234512342342, myticket.seance.cinema_film.film.title]]
  end 
  
  def line_ticket_row2(w)
    myticket=w
    font "arial", :size => 6
    z = ""+ myticket.price.to_s
    cinema_noletters = myticket.seance.cinema_film.cinema.name
    #cinema_noletters["ą"] = "a"
    [[]] + 
    [[myticket.seance.date_from, myticket.seance.time_from.strftime("%H:%M"), myticket.ticket_type.name, z+" zł"]]
  end
  
  def line_ticket_row3
    font "arial", :size => 6
    value0 = @comapny.vat/100.0
    value1 = @receipt.first.sum - (@receipt.first.sum*value0)
    value3 = @receipt.first.sum - value1
    value4 = 200 - @receipt.first.sum
    
    [["SP.OP.A","#{value1.round(2)} zł"]] + 
    [["PTU A #{@comapny.vat}%","#{value3.round(2)} zł"]] +
    [["SUMA PTU","#{value3.round(2)} zł"]] +
    [["SUMA","#{@receipt.first.sum} zł"]] +
    [["GOTOWKA","200 zł"]] +
    [["RESZTA","#{value4} zł"]]
  end
  
  def line_ticket_row4
    font "arial", :size => 6
    [["#{@receipt.first.date}","#{Time.now.strftime("%H:%M")}"]] + 
    [["Kasjer #{@receipt.first.worker_id}","Kasa #{@receipt.first.cash_register}"]]
    
  end
  def line_ticket_row5
    font "arial", :size => 6
    
    font_families.update("my" => {
                             :bold  => "public/fonts/DejaVuSans.ttf",
                             :italic => "public/fonts/DejaVuSans.ttf",
                             :bold_italic => "public/fonts/DejaVuSans.ttf",
                             :normal => "public/fonts/DejaVuSans.ttf" })
    
    [["Kino", {:content => "#{@ticket.first.seance.cinema_film.cinema.name}", :size => 6, :font => "my" } ]] +
    [[]]
    
  end
  
end