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

  # def formatted_person()
  #   # self.cities.each do | cities |
  #   #   temp = cities.name
  #   # end
  #   # self.cases.each do | cases |
  #   #   temp2 = cases.name
  #   # end
  #   self.cpf,
  #     name: self.name,
  #     gender: self.gender,
  #     race: self.race,
  #     birthdate: self.birthdate,
  #     self.city city: self.city.name,
  #     case: self.city.name
  # end

  def city_name
    self.city.name
  end

  def case_name
    self.case.name
  end
end
