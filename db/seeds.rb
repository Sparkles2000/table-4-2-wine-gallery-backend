# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Customergroup.create!(party: 'Hendersons', partyquantity: 2, customerstatus: 'Preferred')
c2 = Customergroup.create!(party: 'Parkers and McMillens', partyquantity: 4, customerstatus: 'General')
c3 = Customergroup.create!(party: 'Jessica, Jack, and Susan', partyquantity: 3, customerstatus: 'General')
c4 = Customergroup.create!(party: 'Denzel Ellison', partyquantity: 1, customerstatus: 'Preferred')
c5 = Customergroup.create!(party: 'Dan Jacobs and Janice Thomson', partyquantity: 2, customerstatus: 'Diamond VIP')
c6 = Customergroup.create!(party: 'Wensingtons', partyquantity: 2, customerstatus: 'Elite Diamond VIP')
c7 = Customergroup.create!(party: 'The Arlington Family', partyquantity: 5, customerstatus: 'General')
