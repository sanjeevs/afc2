namespace :db do
  desc "Fill database with sample value"

  task sample_populate: :environment do
    admin = User.create!(name: 'sanjeev',
                         password: '@anu123',
                         password_confirmation: "@anu123",
                         admin: true)
  end
end
