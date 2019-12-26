namespace :home_register do
  desc "Creating home register"
  task home: :environment do           
  User.create({
    :email => "hola@hotmail.com",
    :name => "Galileo",
    :last_name => "Zapata",
    :mobile_phone => "9991189420",
    :work_place => "Merida"
    })       
  owner=Owner.create({
    :curp => "12345",
    :registered_in_srpago => true
    })  
  User.find_or_create_by(name: "Galileo") do     
    Home.create!({
      :owner => owner,
      :price => 12000.50,
      :extra_service => 1500,
      :home_features => {
        garden: true,
        furnished: true,
        gym: false
      }
    })
  end
  User.find_or_create_by(name: "Galileo") do 
    Home.create!({
      :owner => owner,
      :price => 12000.50,
      :extra_service => 1500,
      :home_features => {
        garden: true,
        furnished: true,
        gym: false
      }
    })
    end 
  end
end