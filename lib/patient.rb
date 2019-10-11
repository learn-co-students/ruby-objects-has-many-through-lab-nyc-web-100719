require 'pry'

class Patient 

    attr_reader :name 
    @@all = []

    def initialize (name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(doctor, self, date)
    end
    
    def appointments 
        Appointment.all.select do |appointment|
            appointment.name == self
           # binding.pry 
        end 
    end 

    def doctors
        appointments.map do |appointment|
            appointment.doctor
           #binding.pry
        end

    end 

        


end