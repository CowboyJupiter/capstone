class Cat < ApplicationRecord
  belongs_to :user

  def play
    if self.happy > 10 
    else
      self.happy+=5
    end    
    self.save
  end


  def feed 
    self.hangry-=5
    self.happy+=5
    if self.thirsty < 1
    else  
      self.thirsty+=2
    end
    self.save
  end 

  def water
    if self.thirsty < 1
    else
      self.thirsty-=5
    end
    if self.happy > 10
    else
      self.happy+=5
    end
    self.save
  end

  def litter

    self.save
  end

  def niptime
    self.happy+=10
    if self.thirsty > 10 
    else
      self.thirsty += 1
    end
    if self.hangry > 10
    else
      self.hangry +=1
    end 
    self.save
  end

  def self.hour_glass
    cat = Cat.first
    cat.hangry -= 2
  end

end
