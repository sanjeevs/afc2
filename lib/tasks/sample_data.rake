require 'factory_girl'

namespace :db do
  desc "Fill database with sample value"

  task sample_populate: :environment do
    puts "Resetting the database"
    Rake::Task['db:reset'].invoke
    puts "Creating Sample Run"
    FactoryGirl.create :production_run
    FactoryGirl.create :product_shipment
    FactoryGirl.create :supply_consumption
    FactoryGirl.create :supply_shipment
  end
end
