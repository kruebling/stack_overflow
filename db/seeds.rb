Post.destroy_all
Comment.destroy_all
Answer.destroy_all

#seeding artists
20.times do
  Post.create!(title: Faker::Beer.unique.name,
                  body: Faker::Hipster.sentence(3),
                  user_id: 1)
end
p "Created #{Post.count} posts"

100.times do
  Answer.create!(body: Faker::Hipster.sentence(3),
               user_id: 1,
               post_id: Faker::Number.between(1, 20))
end
p "Created #{Answer.count} answers"

100.times do
  Comment.create!(body: Faker::Hipster.sentence(3),
               user_id: 1,
               post_id: Faker::Number.between(1, 20),
               answer_id: Faker::Number.unique.between(1, 100))
end
p "Created #{Comment.count} comments"
