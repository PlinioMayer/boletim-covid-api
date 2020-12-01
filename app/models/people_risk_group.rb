class PeopleRiskGroup < ApplicationRecord
  belongs_to :person
  belongs_to :risk_group

  def person_name
    self.person.name
  end

  def risk_group_name
    self.risk_group.name
  end
end
