  class CLI
 
  
  def call 
      Scrape.make_dogs
      welcome_method
      input_from_user_method
      good_bye_method
  end 

  
   
  def welcome_method 
    puts "Welcome to Wagging Tails rescue"
    @scraping = Dog.all 
    @scraping.each.with_index(1) do |recipe, i| 
    puts "#{i}. #{recipe.name}" 
    end 
    puts "Please choose from the following selections"
  end 

  
  def input_from_user_method 
    input = nil
   
  while input != "exit" 
    input = gets.strip.downcase
    inp = input.to_i
  
  if inp.between?(1,20)
    the_scraper = @scraping[inp - 1]
    puts "#{the_scraper.name}"  
    puts "Type info to learn more about your selection"
 
  elsif  input == "info"
    puts "#{the_scraper.info}"
    puts "To go back to our adoptions menu type list if you had enough cuteness type exit"     

  elsif input == "list"
    puts "Whoops!! invalid selection please type list or exit."
    welcome_method
      # puts "Whoops!! invalid selection please type list or exit."
  else 
      # puts "Whoops!! invalid selection please type list or exit."
      
  end 
  end 
  end 
 
 
 def good_bye_method 
    puts "See you next time!"
  end 
end 