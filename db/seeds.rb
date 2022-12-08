puts "seeding"


10.times do 
    Hero.create(name: Faker::Name.name, super_name: Faker::Superhero.name)
    Power.create(name: Faker::Superhero.descriptor, description: Faker::Superhero.power )
end

HeroPower.create(strength: "Average", power_id:1, hero_id: 2)
HeroPower.create(strength: "Strong", power_id:3, hero_id: 4)
HeroPower.create(strength: "Weak", power_id:2, hero_id: 5)
HeroPower.create(strength: "Strong", power_id:1, hero_id: 3)
HeroPower.create(strength: "Weak", power_id:5, hero_id: 6)
HeroPower.create(strength: "Average", power_id:3, hero_id: 2)
HeroPower.create(strength: "Strong", power_id:6, hero_id: 1)

puts "done seeding"