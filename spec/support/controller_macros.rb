module ControllerMacros
    def login_admin
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:admin]
        sign_in FactoryBot.create(:admin) # Using factory bot as an example
      end
    end
    def login_driver
        before(:each) do
          @request.env["devise.mapping"] = Devise.mappings[:driver]
          sign_in FactoryBot.create(:driver) # Using factory bot as an example
        end
    end
    def login_passenger
                
        before(:each) do
          @request.env["devise.mapping"] = Devise.mappings[:passenger]
          sign_in FactoryBot.create(:passenger) # Using factory bot as an example
        end
    end
  
    
  end