require 'pg'
require 'faker'

#Fake data for 20 records in User model

(1..20).each do 
    User.create!(
        first_name: Faker::Name.name,
        last_name: Faker::Name.name,
        email: Faker::Internet.email,
        DOB: Faker::Date.between(from: '1930-01-01', to: '2020-01-01'),
        password: "password",
        password_confirmation: "password",
        username: Faker::String.name,
        # admin?: Faker::Boolean.boolean,
        post_id: Faker::Number.number(digits: 2)
    )
end 

#Fake data for Post model 
# (1..100).each do 
#     Post.create!(
#         title: Faker::Hipster.words(number: 3), 
#         body: Faker::Lorem.sentence(word_count: 40),
#         likes: Faker::Number.number(digits: 2),
#         reaction: Faker::Number.number(digits: 2)
#     )
# end 

#Fake data for Attachment model
# (1..5).each do 
#     Attachment.create!(
#         file_name: Faker::Lorem.sentence(word_count: 5),
#         object: Faker::Lorem.sentence(word_count: 5)
#     )
# end 

#Fake data for Comment model
# (1..5).each do 
#     Comment.create!(    
#         body: Faker::Lorem.sentence(word_count: 40),
#         likes: Faker::Number.number(digits: 2)
#     )
# end 

