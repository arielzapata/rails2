require 'ffaker'

FactoryBot.define do
    factory :user do
      email {FFaker::Internet.email}  
      name {FFaker::Name.name}  
      last_name {FFaker::Name.last_name}  
      mobile_phone {FFaker::PhoneNumber.phone_number}  
      work_place {FFaker::AddressMX.state}  
    end
end