require 'pg'
require 'faker'


User.destroy_all
Post.destroy_all
Comment.destroy_all
Attachment.destroy_all


#Fake data for 20 records in Users table
20.times do
    user = User.new
    user.first_name = Faker::Name.first_name
    user.last_name = Faker::Name.last_name
    user.email = Faker::Internet.email
    user.DOB = Faker::Date.between(from: '1930-01-01', to: '2020-01-01')
    user.password = "password"
    user.password_confirmation = "password"
    user.username = Faker::String.name
    user.save

        # Fake data for Posts table
        2.times do
            post = Post.new
            post.title = Faker::Games::LeagueOfLegends.quote
            post.body = Faker::Lorem.sentence(word_count: 40)
            post.likes = Faker::Number.number(digits: 2)
            post.reaction = Faker::Number.number(digits: 2)
            post.user_id = user.id
            post.save

                #Fake data for Comments table
                3.times do
                    comment = Comment.new
                    comment.body = Faker::Lorem.sentence(word_count: 15)
                    comment.post_id = post.id
                    comment.user_id = user.id
                    comment.save
                end 

                #Fake data for Attachments table (1 attachment per Post)
                attachment = Attachment.new
                attachment.file_name = Faker::Lorem.sentence(word_count: 3)
                attachment.object = Faker::Lorem.sentence(word_count: 10)
                attachment.post_id = post.id
                attachment.save
        end 
end 