class Course
  @@all=[]
  attr_accessor :title,:schedule ,:description
  def initialize
    @@all.push(self)
  end
  def self.all
    return @@all
  end
  def self.reset_all
    @@all=[]
  end
end
