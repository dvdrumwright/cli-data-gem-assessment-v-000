
require 'pry'

  class  ItalianFood::Scrape 

    attr_accessor :name, :info, :url

    @@all = []
   
     def self.all
       @@all
     end

     def save 
        @@all << self
     end
    
    # binding.pry 
     
     def self.make_dogs 
       url = "https://waggingtailsrescue.org/"
       doc = Nokogiri::HTML(open(url)) 
       
       doc_list = doc.css("#page") # dog container
       doc_list.each.with_index do |element,i| # individual dogs
      
       dog = self.new 
       dog.name = doc_list.css("h2")[i].text
       dog.save 
      end 
      binding.pry
    end 
       
   
    def self.dog_attribute 
         url = "https://waggingtailsrescue.org/#/jackson/"
         doc = Nokogiri::HTML(open(url)) 
         
         doc_atrribute = doc.css(".project gallery-project")
         doc_atrribute.each.with_index do |attributes, i|
           
        data = self.new 
        data.info = 
        data.save 
      end 
      
  
  
  end
     end 
 
 
 

