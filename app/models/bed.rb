class Bed < ApplicationRecord
  belongs_to :person
  belongs_to :health_center
end
