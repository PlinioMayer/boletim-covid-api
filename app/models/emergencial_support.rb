class EmergencialSupport < ApplicationRecord
  belongs_to :person

  def person_name
    self.person.name
  end
end
