require 'ffaker'
require 'faker'

namespace :home_register do
  desc "Creating home register"
  task home: :environment do
    owner=Owner.create     
    2.times{
    Home.create({
      :owner => owner,
      :price => Faker::Number.decimal(l_digits: 6, r_digits: 2),
      :extra_service => Faker::Number.decimal(l_digits: 6, r_digits: 2),
      :home_features => {
        garden: FFaker::Boolean.random,
        furnished: FFaker::Boolean.random,
        gym: FFaker::Boolean.random
      }
    })
  }
  end
end