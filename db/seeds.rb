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
