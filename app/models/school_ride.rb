class SchoolRide < ApplicationRecord
    belongs_to :kid
    validates :created_at[0..9], uniqueness: true
end
