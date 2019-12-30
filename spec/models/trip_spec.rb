require 'rails_helper'

RSpec.describe Trip, type: :model do
      describe "validation" do
      
      describe "dep_time range" do
        context "when dep_time is in the past " do
            it "add a validation error" do
                subject.dep_time = DateTime.new(2019, 07, 11, 20, 10, 0)
                subject.valid?                
                expect(subject.errors[:dep_time])
            end
        end
    end
end
      describe "Associations" do
        it { should belong_to(:driver) }
        it { should belong_to(:destination) }
        it { should belong_to(:source) }

      end
    
        
end

