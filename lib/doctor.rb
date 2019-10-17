class Doctor
  attr_accessor :name,
  
  @@all = []
  
def intialize (name)
  @name = name
  @@all<<self 
end

def self.all
  @@all
end

def new_appointment(patient, date)
  Appointment.new(patient,date,self)
end

def appointments
  Appointments.all.select {|appointment| appointment.doctor == self}
end

def patients
  appointments.map(&:patient)
end

end
  