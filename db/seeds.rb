# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

community = Community.new(title: "Default Community", description: "This is the default community for the application.")
community.save!

# Create a default user associated with the community
User.create!(
  email: "admir@admir.com",
  password: "password",
  password_confirmation: "password",
  username: "admir",
  forename: "Admir",
  surname: "Kurman",
  shortbio: "A passionate developer",
  community: community
)

# Create a default post associated with the user
Post.create!(
  title: "Welcome to the Community",
  body: "This is the first post in the default community. Feel free to explore and contribute!",
  user: User.first
)
