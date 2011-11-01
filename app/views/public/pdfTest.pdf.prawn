Prawn::Document.generate("x.pdf") do |pdf|
pdf.text "Hello World!"

pdf.font "Helvetica"


@tickets.each do |t|
  pdf.text "Book: #{t.reservation_id.to_s}",  :style => :bold, :spacing => 4
  pdf.text "Author: #{t.price.to_s}", :spacing => 16
  pdf.start_new_page
end

end