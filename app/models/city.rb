class City < ApplicationRecord
  

  belongs_to :state
  has_many :people
  has_many :emergencial_supports
  has_many :phones
  has_one :bed
  has_many :tests
  has_and_belongs_to_many :risk_groups 
end
