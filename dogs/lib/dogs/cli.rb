  class CLI
 
  
  def call 
      Scrape.make_dogs
      welcome_method
      input_from_user_method
      good_bye_method
  end 

  
   
  def welcome_method 
    puts "Welcome to Wagging Tails"
    @scraping = Dog.all 
    @scraping.each.with_index(1) do |recipe, i| 
    puts "#{i}. #{recipe.name}" 
    end 
    puts "Please choose a dog name from the list"
  end 

  
  def input_from_user_method 
    input = nil
   
  while input != "exit" 
    # input_one = "info"
    # input_two = "Info"
    input != "info"
    input = gets.strip.downcase
    inp = input.to_i
  
  if inp.between?(1,20)
    the_scraper = @scraping[inp - 1]
    puts "#{the_scraper.name}"  
    puts "Great choice!!! if you would like more information about this dog type  => info"
 
  elsif  input == "info"
    puts "#{the_scraper.info}"
    puts "To see the dogs list again type list or exit."      

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