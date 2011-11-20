class CompanyDatum < ActiveRecord::Base
  
  def self.get_facebook_path
        
    if FileTest.exists?("app/data/company_data.xml")
      file = File.open('app/data/company_data.xml')
      doc = REXML::Document.new(file)
      file.close
      
      doc.elements['company_data/facebook_path'].text
    else
      CompanyDatum.first.facebook_path
    end
  end
end
