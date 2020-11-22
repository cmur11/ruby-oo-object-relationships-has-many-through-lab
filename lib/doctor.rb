
class Doctor
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
        #iterates overa @@all appointments and selects patient.doctors that are equal to 
       Appointment.all.select {|patient| patient.doctor == self} 
    end
    
    def new_appointment(date,patient)
        Appointment.new(date,patient,self)
    end

    def patients
        appointments.collect{|name| name.patient}
    end
end