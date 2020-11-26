class Person < ApplicationRecord
  belongs_to :city
  belongs_to :case
  has_many :phones, dependent: :destroy

  def phones_number
    numbers = []
    self.phones.each do | phones |
      numbers.push(phones.number) 
    end
    numbers
  end
end
