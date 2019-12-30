class Place < ApplicationRecord
    validates :name, :pos_lat, :pos_long, presence: true

    validates_numericality_of :pos_lat,
                            greater_than_or_equal_to: -90,
                            less_than_or_equal_to: 90
    validates_numericality_of :pos_long,
                            greater_than_or_equal_to: -180,
                            less_than_or_equal_to: 180
end
