class Mission < ApplicationRecord
  validates_presence_of :title, :time_in_space
  belongs_to :astronaut
end
