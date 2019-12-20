class Cat < ApplicationRecord
  def play
    self.happy+=5
    self.sleepy+=1
  end


  def feed 
    self.hangry-=2
    self.happy+=1
    self.thirsty+=1
    self.save
  end 

  def water
    self.thirsty+=2
    self.happy+=1
    self.save
  end

  def naptime
    self.sleepy-=10
  end

  def niptime
    self.happy+=10
  end

end
