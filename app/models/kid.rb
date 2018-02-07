class Kid < ApplicationRecord
  belongs_to :family
  has_many :school_rides
  has_many :home_rides
end
