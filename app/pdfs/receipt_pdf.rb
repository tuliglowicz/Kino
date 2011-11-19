# encoding: UTF-8
class ReceiptPdf < Prawn::Document
  def initialize(receipt, comapny, view)
    super(top_margin: 5, :page_size => [160,320], left_margin: 5)
    @comapny = comapny
    @receipt = receipt
    @view = view
    @receipt.each do |w|
      order_number(w)
      
    end
    
    #mytable
    #mypicture
    
  end
  
  def order_number(w)
    receiptC = w 
    font_families.update("arial" => {
                             :bold  => "public/fonts/receipt.ttf",
                             :italic => "public/fonts/receipt.ttf",
                             :bold_italic => "public/fonts/receipt.ttf",
                             :normal => "public/fonts/receipt.ttf" })
    font "arial", :size => 9
    text "#{@comapny.name}", size: 9, style: :bold,  :align => :center 
    text "#{@comapny.address}", size: 9, style: :bold
    move_down 40
  end
  
  
  
end