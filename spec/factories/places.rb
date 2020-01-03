FactoryBot.define do
    factory :place_one, class: "Place" do
        name { "test" }
        pos_lat  { 32.57657 }
        pos_long { 30.7879 }
        
    end
    factory :place_two, class: "Place" do
        name { "test 2" }
        pos_lat  { 32.76657 }
        pos_long { 30.8879 }
        
    end
end