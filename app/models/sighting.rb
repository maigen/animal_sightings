class Sighting < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :species
  belongs_to :region
end
