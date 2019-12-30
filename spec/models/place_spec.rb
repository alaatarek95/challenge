require 'rails_helper'

RSpec.describe Place, type: :model do
  
    describe "validation" do
        describe "name" do
            context "when  name has no value" do
                it "add a validation error" do
                subject.name = ""
                subject.valid?
                expect(subject.errors[:name])
                end
            end
        end
        describe "pos_lat range" do
        context "when pos_lat is greater than 90 and less than -90 " do
                it "add a validation error" do
                subject.pos_lat = 91
                subject.valid?
                expect(subject.errors[:pos_lat])
                end
                it "add a validation error" do
                    subject.pos_lat = -99
                    subject.valid?
                    expect(subject.errors[:pos_lat])
                end
            end
        end
        describe "pos_long range" do
            context "when pos_long is greater than 180 and less than -180 " do
                it "add a validation error" do
                    subject.pos_long = 200
                    subject.valid?
                    expect(subject.errors[:pos_long])
                end
                it "add a validation error" do
                    subject.pos_long = -188
                    subject.valid?
                    expect(subject.errors[:pos_long])
                end
            end
        end
    end
        
end

