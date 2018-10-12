    class CLI
 
     def call 
        Scrape.make_dogs
        welcome_method
        input_from_user_method
        good_bye_method
    end 

  
   
    def welcome_method 
      puts "\u{1f436}  Welcome to Wagging Tails Rescue  \u{1f436}"
      @scraping = Dog.all 
      @scraping.each.with_index(1) do |recipe, i| 
      puts "#{i}. #{recipe.name}" 
     end 
      puts "Please choose from the following selections \u{1f436}"
    end 

  
    def input_from_user_method 
        input = nil
     
    while input != "exit" 
        input = gets.strip.downcase 
        inp = input.to_i
      
      
    if inp.between?(1,@scraping.size)
        the_scraper = @scraping[inp - 1]
        puts "#{the_scraper.name}"  
        puts "Great choice ! if you would like more information regarding your option type INFO \u{1f642"
        
    elsif input == "info"
          puts "#{the_scraper.info}"
          puts "To go back to our adoption menu type list, if you had enough cuteness type exit"      
        
    elsif input == "list"
          welcome_method
    
    elsif input == "exit"
  
    break 
      else 
        puts "\u{1f640} Whoops invalid choice to go back to our main menu type List"
        end 
      end 
    end 
 
 
 
    def good_bye_method 
          puts "See you next time!"
      end 
    end 

 





  