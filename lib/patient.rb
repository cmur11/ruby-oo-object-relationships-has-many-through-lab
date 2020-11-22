
class Patient
    attr_accessor :name
    
    @@all = []
   
     def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        #initializes through appointments all and selects/creates new array if doctor.patient ==self
        Appointment.all.select {|doctor| doctor.patient == self}
    end

    def new_appointment(date,doctor)
        Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map {|name| name.doctor}
    end
end