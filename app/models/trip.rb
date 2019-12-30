class Trip < ApplicationRecord
    belongs_to :driver, class_name: "User", foreign_key: "driver_id"
    belongs_to :source, class_name: "Place", foreign_key: "source_id"
    belongs_to :destination, class_name: "Place", foreign_key: "destination_id"
    validate :accepted_time
    validates_presence_of :driver
    validates_presence_of :source
    validates_presence_of :destination
    validates_numericality_of :seats,
                            greater_than_or_equal_to: 3

    def accepted_time
      errors.add(:dep_time, "depature time can not be in the past") unless self.dep_time > DateTime.now
    end

end
