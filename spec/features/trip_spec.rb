require 'rails_helper'


RSpec.feature "Pickup", js: true, driver: :selenium_chrome, type: :feature do
	feature 'add new pickup' do
		scenario 'pickup faild to be added' do
			login_as(FactoryBot.create(:passenger))
			FactoryBot.create(:place_one)
			FactoryBot.create(:place_two)
			visit new_pickup_path
			within '#new_pickup' do 
			
				fill_in id: 'pickup_dep_time',  with: DateTime.now.yesterday.strftime("%m%d%Y\t%I%M%P")
				select('test', :from => 'pickup_destination_id')
				select('test 2', :from => 'pickup_source_id')
				click_button 'Create Pickup'
			end
			current_path.should == pickups_path
			page.should have_selector('#error_explanation')


		end

	end

end
