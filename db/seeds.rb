# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
User.create! name: 'sanjeev', password: '@anu123', password_confirmation: '@anu123', admin: true
User.create! name: 'anupama', password: '@sanjeev123', password_confirmation: '@sanjeev123', admin: false 
User.create! name: 'neha', password: '@amit123', password_confirmation: '@amit123', admin: false 
User.create! name: 'amit', password: '@neha123', password_confirmation: '@neha123', admin: false 

Producer.delete_all
bobbee = Producer.create! name: 'Bobbees Bottling', contact_name: 'John Aschenbrenner', address: '42 Golden Leaf Drive, Louisburg, NC 27549',
                 phone: '919-496-4286', email: 'service@bobbeesbottling.com'

Supplier.delete_all
Supplier.create! name: 'Fyve Elements LLC', contact_name: 'Suresh Balakrishnan', address: '8268 Preston Court, Suite H, Jessup, MD 20794',
                 phone: '301-725-6699', email: 'suresh@fyvelements.com'
Supplier.create! name: 'House Of Spices Inc', contact_name: 'Mukesh Patel', address: '4140 Blue Ridge Industrial Pkwy, Norcross, GA 30071',
                 phone: '770-263-0202', email: 'mpatel@houseofspicesindia.com'
Supplier.create! name: "Richard Packaging", contact_name: 'Alexia Battaly', address: "4721 Burbank Rd. Ste. 1 Memphis, TN 38118", email: "ABattaly@richardspackaging.com"


Product.delete_all
piaz_black_lid = Product.create! name: "Piaz Black Lid Retail", unit: "bottle", image_path: "/products/piaz_black_lid_retail.png", net_weight_oz: "8.5", fluid_oz: "7.75"
zukti_stout = Product.create! name: "Zukti Stout Glass", unit: "bottle", image_path: "/products/zukti_stout_retail.jpg", net_weight_oz: "13.75", fluid_oz: "12"
zukti_plastic = Product.create! name: "Zukti 12 oz Plastic", unit: "bottle", image_path: "/products/zukti_plastic.png", net_weight_oz: "16.6", fluid_oz: "11.66"
piaz_baby = Product.create! name: "Piaz Baby Food", unit: "bottle", image_path: "/products/piaz_baby_food.png", net_weight_oz: "5.12", fluid_oz: "4"
zukti_half = Product.create! name: "Zukti Half Gallon", unit: "bottle", image_path: "/products/zukti_half_gallon.png", net_weight_oz: "84", fluid_oz: "64"
piaz_half = Product.create! name: "Piaz Half Gallon", unit: "bottle", image_path: "/products/no_picture.png", net_weight_oz: "92", fluid_oz: "64"

# New ones with no photos.
piaz_full = Product.create! name: "Piaz 1 Gallon", unit: "bottle", image_path: "/products/no_picture.png", net_weight_oz: "92", fluid_oz: "128"
zukti_full = Product.create! name: "Zukti 1 Gallon", unit: "bottle", image_path: "/products/no_picture.png", net_weight_oz: "92", fluid_oz: "128"
zukti_10oz = Product.create! name: "Zukti 10 oz Glass Deep Finish", unit: "bottle", image_path: "/products/zukti_stout_retail.jpg", net_weight_oz: "", fluid_oz: "10"
piaz_716oz = Product.create! name: "Piaz 7.16 oz Glass Deep Finish", unit: "bottle", image_path: "/products/piaz_black_lid_retail.png", net_weight_oz: "", fluid_oz: "7.16"
zukti_1166oz = Product.create! name: "Zukti 11.66 oz Glass Deep Finish", unit: "bottle", image_path: "/products/piaz_black_lid_retail.png", net_weight_oz: "", fluid_oz: "11.66"

Customer.delete_all
Customer.create!(name: "Everybody\'s Whole Foods", address: "501 N 2nd St., Fairfield, Iowa 52556 (641) 472-5199", email: "ewfemployees@gmail.com")
Customer.create!(name: "Grill Masters Club", address: "6487 Afermatto St., Las Vegas, Nevada 89131 ", email: "info@grillmastersclub.com")
Customer.create!(name: "Lowe's Food Tyron Road Cary", address: "6430 Tryon Road, Cary, NC 27513, Wake (919) 859-9335", email: "")
Customer.create!(name: "Lowe's Foods Apex", address: "5400 Apex Peakway, Apex, North Carolina 27502, Wake (919) 363-5376", email: "")
Customer.create!(name: "Lowe's Foods Brier Creek Raleigh", address: "8100 Brier Creek Parkway, Raleigh, NC 27617, Wake (919) 293-0294", email: "")
Customer.create!(name: "Lowe's Foods Capital Blvd. Wake Forest", address: "12524 Capital Blvd., Wake Forest, NC 27588, Wake (919) 562-5020", email: "PBrown@lowesfoods.com")
Customer.create!(name: "Lowe's Foods Chapel Hill", address: "11312 Highway 15 501 N., Chapel Hill, NC 27514, Chatham (919) 969-1464", email: "PBrown@lowesfoods.com")
Customer.create!(name: "Lowe's Foods Cornerstone Commons Raleigh", address: "8201 Rowlock Way, Cornerstone Commons, Raleigh, NC 27612, Wake (919) 792-0304", email: "PBrown@lowesfoods.com")
Customer.create!(name: "Lowe's Foods Gateway Commons Circle Wake Forest", address: "932 Gateway Commons Circle, Wake Forest, NC 27587, Wake (919) 554-0537", email: "PBrown@lowesfoods.com")
Customer.create!(name: "Lowe's Foods High House Road Cary", address: "930 High House Road, Cary, NC 27513, Wake (919) 467-4441", email: "")
Customer.create!(name: "Lowe's Foods Holly Springs", address: "112 Bass Lake Road, Holly Springs, NC 27540, Wake (919) 577-6971", email: "")
Customer.create!(name: "Lowe's Foods Louisburg", address: "115 South Bickett Blvd., Louisburg, NC 27549, Franklin (919) 496-9874", email: "Lfs22dsd@lowesdoods.com")
Customer.create!(name: "Lowe's Foods Louisburg Road Raleigh", address: "8440 Louisburg Road, Suite 110, Raleigh, NC 27616, Wake (919) 266-1031", email: "")
Customer.create!(name: "Lowe's Foods NC Hwy 42 West Raleigh", address: "7281 NC Hwy 42 West, Raleigh, NC 27603, Johnston (919) 329-6692", email: "")
Customer.create!(name: "Lowe's Foods Strickland Road Raleigh", address: "9600 Strickland Road, Raleigh, NC 27615, Wake (919) 847-5661", email: "PBrown@lowesfoods.com")
Customer.create!(name: "NC General Stores", address: "150 S White St, Wake Forest, NC 27587 (919) 302-2289", email: "")
Customer.create!(name: "Noemonde", address: "3817 Beryl Rd, Raleigh, NC 27607 (919) 828-1628", email: "Ashraf@neomonde.com")
Customer.create!(name: "Savory Spice Shop", address: "8470 Honeycutt Rd #108, Raleigh, North Carolina 27615, United States ", email: "")
Customer.create!(name: "Southern Seasons", address: " ", email: "khunt@southernseason.com")
Customer.create!(name: "The Butchers Market", address: "1225 Kildaire Farm Rd, Cary, North Carolina 27511, United States ", email: "")
Customer.create!(name: "The Butchers Market (Raleigh)", address: "5045 Falls of Neuse Rd, Raleigh, North Carolina 27609 (919) 809-8914", email: "raleigh@thebutchers-market.com")
Customer.create!(name: "The Produce Box", address: " ", email: "")
Customer.create!(name: "Vom Fass", address: "316 Colonades Way #209, Cary, NC 27518 (919) 977-6745", email: "julie.ginsler@gmail.com")
Customer.create!(name: "Whole Foods", address: " ", email: "")
