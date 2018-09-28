
  
  class CLI
 
   def call 
       Scrape.make_dogs
      welcome_method
      input_from_user_method
      good_bye_method
  end 

   
  def welcome_method 
      puts "Welcome to Wagging Tails"
        puts "Please choose from the following dog name list:"
     @scraping = Scrape.all 
     @scraping.each.with_index(1) do |recipe, i| 
      puts "#{i}. #{recipe.name}" 
   end 
    end 

  
  
  def input_from_user_method 
        input = nil
   
    while input != "exit" 
        input != "info"
        input = gets.strip
          inp = input.to_i
 
    if inp.between?(1,23)
       the_scraper = @scraping[inp - 1]
        puts "#{the_scraper.name}"  
           puts "Great choice!!! if you would like more information about this dog type  => info"
  
      elsif input == "info"  
        puts "#{the_scraper.info}."
          puts "To see the dog's list again type list or exit."      
  
        elsif input == "list"
            welcome_method
       
            else 
             puts "Whoops!! invalid selection please type list or exit."
      
      end 
        end 
          end 

  
  
  def good_bye_method 
      puts "See you next time!"
    end 
      end 



  