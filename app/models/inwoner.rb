class Inwoner < ApplicationRecord
  has_many :inwoner_notes
  has_many :vehicles
end
