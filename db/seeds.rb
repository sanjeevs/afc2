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
Producer.create! name: 'Bobbees Bottling', contact_name: 'John Aschenbrenner', address: '42 Golden Leaf Drive, Louisburg, NC 27549',
                 phone: '919-496-4286', email: 'service@bobbeesbottling.com'

Supplier.delete_all
Supplier.create! name: 'Fyve Elements LLC', contact_name: 'Suresh Balakrishnan', address: '8268 Preston Court, Suite H, Jessup, MD 20794',
                 phone: '301-725-6699', email: 'suresh@fyvelements.com'
Supplier.create! name: 'House Of Spices Inc', contact_name: 'Mukesh Patel', address: '4140 Blue Ridge Industrial Pkwy, Norcross, GA 30071',
                 phone: '770-263-0202', email: 'mpatel@houseofspicesindia.com'
Supplier.create! name: "Richard Packaging", address: "4721 Burbank Rd. Ste. 1 Memphis, TN 38118", email: "ABattaly@richardspackaging.com"


