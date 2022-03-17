class Vehicle < ApplicationRecord
  belongs_to :inwoner
  has_many :vehicle_notes
end
