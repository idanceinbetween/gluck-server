#Without foreign keys
# User.create(username: "hjxuan", email: "hjxuan@fis.com", password_digest: BCrypt::Password.create("123hjxuan"))
# User.create(username: "lukeles", email: "lukeles@fis.com", password_digest: BCrypt::Password.create("123lukeles"))
# User.create(username: "allyfd", email: "allyfd@fis.com", password_digest: BCrypt::Password.create("123allyfd"))
# User.create(username: "flow81", email: "flow81@fis.com", password_digest: BCrypt::Password.create("123flow81"))

#With foreign keys

#user as foreign key
# Communication.create(label: "Email", content:"hjxuan8@gmail.com", user_id: 1)
# Communication.create(label: "Phone", content:"07990527816", user_id: 1)
# Communication.create(label: "Email", content:"lukeles@gmail.com", user_id: 2)

# Location.create(label:"rushcutters", address:"1 Rushcutters Court", city: "London", postcode: "SE16 7WH", user_id: 1)
# Location.create(label:"shoreditch", address:"157A Commercial St, Spitalfields", city: "London", postcode: "E1 6BJ", user_id: 1)
# Location.create(label:"flatiron", address:"131 Finsbury Pavement", city: "London", postcode: "EC2A 1TN", user_id: 2)

# UserTemplate.create(label: "rushcutters safe place", content: "When you get there still on the street Boat Lifter Way, you’d see a street lamp, behind it you’d see the back of a square block of wall. There is a gap between this wall and the low wall on the pavement. I’ll leave the Gifts in this gap. Hope you find them!", user_id: 1, location_id: 1)
# UserTemplate.create(label: "call", content: "Please text me when you get there!", user_id: 1, location_id: 2)

# Tag.create(title:"priority", color:"green", gifter_id: 1)
# Tag.create(title:"2nd", color:"yellow", gifter_id: 4)

# # Remove Line 3 and Line 4 in gift.rb Model before seeding the below
# Gift.create(title: "crayons", description: "Box of crayons literally unused!", image: "https://i.ibb.co/8x7h7gv/Crayons.jpg", gifter_id: 1, expiry: DateTime.new(2019,6,19), exchange1_datetime: "office hours 9-5", exchange1_location: "E1 6BJ", exchange2_datetime: "evenings", exchange2_location: "SE16 7WH", listing_stat_id: 1)
# Gift.create(title: "Silentnight quilted duck feather pillow", description: "Only used a few days and now freshly washed. Too soft for my liking.", image: "https://i.ibb.co/RytHh60/Pillow.jpg", gifter_id: 1,expiry: DateTime.new(2019,6,20), exchange1_datetime: "office hours 9-5", exchange1_location: "E1 6BJ", exchange2_datetime: "evenings", exchange2_location: "SE16 7WH", listing_stat_id: 1)
# Gift.create(title: "tool hooks", description: "5 pack tool hooks not used. Please note that the label has broken off.", image: "https://i.ibb.co/0CHPtGL/toolhooks.jpg", gifter_id: 1,expiry: DateTime.new(2019,6,30), exchange1_datetime: "office hours 9-5", exchange1_location: "E1 6BJ", exchange2_datetime: "evenings", exchange2_location: "SE16 7WH", listing_stat_id: 1)
# Gift.create(title: "Reese's peanut butter balm", description: "Unused peanut butter flavoured lip balm. Please note that the package has broken off but the balm itself is unopened.", image: "https://i.ibb.co/TKLKrV3/Reese-PB-Lipbalm.jpg", gifter_id: 4,expiry: DateTime.new(2019,6,30), exchange1_datetime: "sundays mornings", exchange1_location: "N4 1TN", exchange2_datetime: "evenings", exchange2_location: "N1 8QH", listing_stat_id: 1)

#hjxuan gives out 2 items, to 2 users, 3 exchanges
#hjxuan receives 1 item, from 1 user

# Exchange.create(gift_id: 1, gifter_id: 1, recipient_id: 2, date: DateTime.new(2019,7,2), tag_id: 1, exchange_stat_id: 1)
# Exchange.create(gift_id: 1, gifter_id: 1, recipient_id: 3, date: DateTime.new(2019,7,4), tag_id: 2, exchange_stat_id: 1)
# Exchange.create(gift_id: 2, gifter_id: 1, recipient_id: 2, date: DateTime.new(2019,7,2), tag_id: 1, exchange_stat_id: 1)
# Exchange.create(gift_id: 4, gifter_id: 4, recipient_id: 1, date: DateTime.new(2019,6,22), tag_id: 1, exchange_stat_id: 1)

# ListingStat.create(label: 'active')
# ListingStat.create(label: 'expired')

# ExchangeStat.create(label:'requested')
# ExchangeStat.create(label:'committed')
# ExchangeStat.create(label:'on_hold')
# ExchangeStat.create(label:'completed')
# ExchangeStat.create(label:'cancelled')