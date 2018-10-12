    class Scrape

    
    def self.make_dogs
        url = "https://waggingtailsrescue.org/"
        doc = Nokogiri::HTML(open(url))
        
        doc_list  = doc.css("a.project")
        doc_list.each.with_index do |element, i| 
      
    next if doc_list.css("div.project-title")[i].text == "Weekly Adoptions"
        dog = Dog.new 
        dog.name = doc_list.css("div.project-title")[i].text 
        dog.info = doc.css("div.project-meta")[i].text
        dog.save 
       
        end 
      end 
    end 
   
