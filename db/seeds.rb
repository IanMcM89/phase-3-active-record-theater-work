puts "🌱 Seeding..."

Role.create(character_name: "Blackbeard")
Role.create(character_name: "Calico Jack")
Role.create(character_name: "Ben Hornigold")

Audition.create(actor: "Ian McManus", location: "St. Pete", phone: 8133008619, hired: false, role_id: 1)
Audition.create(actor: "Kyle Castillo", location: "Philly", phone: 1111111111, hired: false, role_id: 1)
Audition.create(actor: "Tom Moskowitz", location: "Long island", phone: 2222222222, hired: true, role_id: 2)
Audition.create(actor: "Ben Edwards", location: "Jacksonville", phone: 3333333333, hired: true, role_id: 3)

puts "Seeding complete."