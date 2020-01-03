require 'rails_helper'


RSpec.feature "Trip", js: true, driver: :selenium_chrome, type: :feature do
	feature 'add new trip' do
		scenario 'trip faild to be added' do
			login_as(FactoryBot.create(:driver))
			FactoryBot.create(:place_one)
			FactoryBot.create(:place_two)
			visit new_trip_path
			within '#new_trip' do 
			
				fill_in id: 'trip_dep_time',  with: DateTime.now.yesterday.strftime("%m%d%Y\t%I%M%P")
				fill_in id: 'trip_seats', with: 2
				select('test', :from => 'trip_destination_id')
				select('test 2', :from => 'trip_source_id')
				click_button 'Create Trip'
			end
			current_path.should == trips_path
			page.should have_selector('#error_explanation')


		end

	end

end
