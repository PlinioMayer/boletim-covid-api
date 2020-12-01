class HealthCenter < ApplicationRecord
  has_many :beds, dependent: :destroy
  has_many :doctors, dependent: :destroy
  belongs_to :city

  def city_name
    self.city.name
  end
  
end
