# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer1 = Customer.create([{ name:'Customer 1' }, { lastName:'Perez' }, { adress:'Address 1' }, { e_mail:'Customer1@email.com' }, { phone:123456789 }, { password:'1234' }])
customer2 = Customer.create([{ name:'Customer 2' }, { lastName:'Perez' }, { adress:'Address 2' }, { e_mail:'Customer2@email.com' }, { phone:123456789 }, { password:'1234' }])

venue1 = Venue.create([{ name:'Venue 1' }, { adress:'Address 1' }, { capacity:1234 }])
venue2 = Venue.create([{ name:'Venue 2' }, { adress:'Address 2' }, { capacity:1234 }])

event1 = Event.create([{name:'Event 1'}, {desciption:'Description 1'}, {date:'2020-04-06 00:20:27'}, {venue:venue1}])
event2 = Event.create([{name:'Event 2'}, {desciption:'Description 2'}, {date:'2020-04-06 00:20:27'}, {venue:venue2}])

ticket1 = Ticket.create([{name:1111}, {event:event1}])
ticket2 = Ticket.create([{price:2222}, {event:event2}])

ticket_order1 = TicketOrder.create([{customer:customer1}, {quantity:1}, {ticket:ticket1}])
ticket_order2 = TicketOrder.create([{customer:customer2}, {quantity:2}, {ticket:ticket2}])