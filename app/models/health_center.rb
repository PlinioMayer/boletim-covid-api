class HealthCenter < ApplicationRecord
  has_many :beds
  has_many :doctors

  

end
