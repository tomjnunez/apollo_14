class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job

  has_many :missions

  def self.average_age
    average(:age).to_i
  end
end
