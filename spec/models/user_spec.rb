require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    User.create!({:full_name =>"alaa tarek",:phone=>"1234567890" ,:password=>"123456",  email: "test@test.com", role: 0 })
  end
  
  describe "validation" do
    describe "full_name" do
      context "when full name is less than6 characters" do
        it "add a validation error" do
          subject.full_name = "alaa"
          subject.valid?
          expect(subject.errors[:full_name])
        end
      end
    end
    describe "phone uniquness" do
      context "when phone has no value " do
        it "add a validation error" do
          subject.phone = "1234567890"
          subject.valid?
          expect(subject.errors[:phone])
        end
      end
    end
    describe "phone " do
      context "when phone is aleadry exists " do
        it "add a validation error" do
          subject.phone = ""
          subject.valid?
          expect(subject.errors[:phone])
        end
      end
    end
    describe "password" do
      context "when password has no value " do
        it "add a password error" do
          subject.encrypted_password = ""
          subject.valid?
          expect(subject.errors[:encrypted_password])
        end
      end
    end
    describe "role" do
      context "when role has no value " do
        it "add a role error" do
          subject.role = ""
          subject.valid?
          expect(subject.errors[:role])
        end
      end
    end
  end







end

