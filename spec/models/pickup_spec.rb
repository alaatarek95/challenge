require 'rails_helper'

RSpec.describe Pickup, type: :model do
    before do
        User.create!({:full_name =>"alaa tarek",:phone=>"1234567890" ,:password=>"123456",  email: "test@test.com", role: 0 })
        Place.create!({:name =>"Giza",:pos_lat=>"41.40338" ,:pos_long=>"2.17403" })
        Place.create!({:name =>"Cairo",:pos_lat=>"41.40200" ,:pos_long=>"2.19403" })

      end
      describe "Associations" do
        it { should belong_to(:passenger) }
        it { should belong_to(:destination) }
        it { should belong_to(:source) }

      end
    
    describe "validation" do
        describe "belongs to passenger" do
            context "when subject has no passenger" do
                it { should validate_presence_of(:passenger) }
            end
            
        end
        describe "belongs to destination" do
            context "when subject has no destination" do
                it { should validate_presence_of(:destination) }

            end
            
        end
        describe "belongs to source" do
            context "when subject has no source" do
                it { should validate_presence_of(:source) }

            end
            
        end
    
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
        
end

