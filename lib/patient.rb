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
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
  def appointments 
    Appointments.all.select { |appt| appt.patient == self }
  end
  
  def doctors 
    self.appointments.collect { |appt| appt.doctor }
  end
  
end