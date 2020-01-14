class Cat < ApplicationRecord
  belongs_to :user

  def play
    if self.happy > 10 
    else
      self.happy+=5
    end  

    if self.sleepy > 10
    else
      self.sleepy+=1
    end  
    self.save
  end


  def feed 
    if self.hangry < 1
    else
      self.hangry-=5
    end
    if self.happy > 10
    else
      self.happy+=5
    end
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

  def naptime
    if self.sleepy < 1
    else
      self.sleepy-=10
    end
    self.save
  end

  def niptime
    self.happy+=10
    self.sleep-=5
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
