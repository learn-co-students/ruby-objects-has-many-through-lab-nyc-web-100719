require 'pry'
class Doctor
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name

        @@all << self
    end

    def new_appointment(patient, date)
        #binding.pry
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            #binding.pry
            appointment.doctor == self
        end
        
    end

    def patients
        appointments.map do |appointment|
            #binding.pry
            appointment.patient
        end
    end

end