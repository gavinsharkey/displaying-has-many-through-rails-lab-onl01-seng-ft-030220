class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def formatted_date
    self.appointment_datetime.strftime("%B %e, %Y at %R")
  end
end
