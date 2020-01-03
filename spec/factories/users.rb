FactoryBot.define do
    factory :passenger, class: "User" do
        full_name { "passenger alaa" }
        email  { "passenger@test.com" }
        password { "123456" }
        password_confirmation { "123456" }
        phone { "12345678891" }
        role { 1 }
    end
    factory :admin, class: "User" do
        full_name { "admin alaa" }
        email  { "admin@test.com" }
        password { "123456" }
        password_confirmation { "123456" }
        phone { "12345678895" }
        role { 2 }
    end
    factory :driver, class: "User" do
        full_name { "driver alaa" }
        email  { "driver@test.com" }
        password { "123456" }
        password_confirmation { "123456" }
        phone { "12345678892" }
        role { 0 }
    end
end