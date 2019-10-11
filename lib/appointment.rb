class Appointment
    attr_reader :doctor, :patient
    attr_accessor :date
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient

        @@all << self
        #binding.pry
    end

end