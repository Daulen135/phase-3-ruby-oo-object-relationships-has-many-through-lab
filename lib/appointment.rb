
# class Appointment

#     attr_accessor :patient, :doctor, :date
  
#     @@all = []
  
#     def self.all
#       @@all
#     end
  
#     def initialize(patient, doctor, date)
#       @patient = patient
#       @doctor = doctor
#       @date = date
#       #Update doctor data fields
#       @doctor.patients << patient
#       @doctor.appointments << self
#       #Update patient data fields
#       @patient.doctors << doctor
#       @patient.appointments << self
  
#       @@all << self
#     end
#   end
  
class Appointment
    attr_accessor:date, :patient, :doctor
    @@all =[]

    
    def initialize(date, patient, doctor)
    @ndate=date
    @patient=patient
    @doctor=doctor
    @@all << self
    end

   
    def self.all
        @@all
    end

    def patient
        @patient
      end

    def doctor
        @doctor
    end

    
    def new_appointment(patient, date)
    Appointment.new(patient, date, self)
    end
    

end

