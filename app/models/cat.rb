class Cat < ApplicationRecord
  belongs_to :user

  def play
    self.happy+=5
    self.sleepy+=1
    self.save
  end


  def feed 
    self.hangry-=5
    self.happy+=5
    self.thirsty+=2
    self.save
  end 

  def water
    self.thirsty+=5
    self.happy+=5
    self.save
  end

  def naptime
    self.sleepy-=10
    self.save
  end

  def niptime
    self.happy+=10
    self.save
  end
  
  def pet_sitter
    status false
    self.happy == 10

    
  end
end
