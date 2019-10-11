class Appointment
  attr_reader :date
  attr_accessor :doctor, :name

  @@all = []

  def initialize (date, name, doctor)
    @date = date
    @name = name
    @doctor = doctor
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def patient 
    @name
  end 

end 