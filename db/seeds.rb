require 'faker'

# Create Posts 
50.times do 
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end
posts = Post.all 

# Create Comments
100.times do 
  Comment.create!(
    post: posts.sample, 
    body: Faker::Lorem.paragraph
  )
end 

Advertisement.create!(
  title: "This is an Advertisement!",
  copy: "This is the body of the Advertisement!",
  price: 5000
  )
Advertisement.create!(
  title: "This is Catherine", 
  copy: "Catherine has a body", 
  price: 10000
  )
Advertisement.create!(
  title: "This is Wednesday",
  copy: "Wednesday is a dog",
  price: 1500
  )


puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
