class Pickup < ApplicationRecord
    belongs_to :passenger, class_name: "User", foreign_key: "passenger_id"
    belongs_to :source, class_name: "Place", foreign_key: "source_id"
    belongs_to :destination, class_name: "Place", foreign_key: "destination_id"
    validate :accepted_time
    validates_presence_of :passenger
    validates_presence_of :source
    validates_presence_of :destination

    def accepted_time
      errors.add(:dep_time, "depature time can not be in the past") unless self.dep_time > DateTime.now
    end

end
