require 'pry'

class Doctor 
  @@all = [] 
   
  attr_reader :name 
   
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    return Appointment.all.select do |app|
      app.doctor == self
    end
  end
  
  def patients
    my_appointments = self.appointments
    my_appointments.map do |app|
      app.patient
    end
  end
end