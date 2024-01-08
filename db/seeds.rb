# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

sinai = Org.create(name: 'Mount Sinai Hospital', zip: 10028)
langone = Org.create(name: 'NYU Langone', zip: 10014)
jacobi = Org.create(name: 'Jacobi Medical Bronx', zip: 10461)

Provider.create(name: 'Meredith Grey', role: 'physician_resident', org: sinai)
Provider.create(name: 'Derek Shepherd', role: 'physician', org: sinai)
Provider.create(name: 'Betty Nelson', role: 'registered_nurse', org: sinai)
Provider.create(name: 'Evelyn Ratchet', role: 'registered_nurse', org: jacobi)
Provider.create(name: 'Talia Swerg', role: 'physicians_assistant', org: langone)

Patient.create(name: 'Paul Kogan', email: 'paulkog@gmail.com', dob: Date.parse('1947-09-21'))
Patient.create(name: 'Larry Lol', email: 'larry@lol.com', dob: Date.parse('1958-01-01'))
Patient.create(name: 'Winfred Pooh', email: 'win@pooh.com', dob: Date.parse('1966-01-03'))


