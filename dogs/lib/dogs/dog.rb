class Dog 
  
  attr_accessor :name, :info, :url

  @@all = []

  def self.all
      @@all
  end
  

  def save
      @@all << self
  end
end 
