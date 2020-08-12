
puts 'creating restaurants...'

tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: '13 rue des boulets', category: 'french')
tour_d_argent.save!

chez_gladines = Restaurant.new(name: 'Chez Gladines', address: "20 rue de l'hopital", category: 'belgian')
chez_gladines.save!

il_cinco = Restaurant.new(name: 'Il cinco', address: "2 rue de l'hopital", category: 'italian')
il_cinco.save!

fouquettes = Restaurant.new(name: 'Fouquettes', address: "10 rue de l'hopital", category: 'french')
fouquettes.save!

chica_pitanga = Restaurant.new(name: 'Chica Pitanga', address: "5 rue de l'hopital", category: 'chinese')
chica_pitanga.save!

puts 'Finished!'
