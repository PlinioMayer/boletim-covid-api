class HealthCenter < ApplicationRecord
  has_many :beds
  has_many :doctors
  belongs_to :city

  def city_name
    self.city.name
  end
  
end
