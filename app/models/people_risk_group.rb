class PeopleRiskGroup < ApplicationRecord
  belongs_to :person
  belongs_to :risk_group
end
