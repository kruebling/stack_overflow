Post.destroy_all
Comment.destroy_all
Answer.destroy_all

#seeding artists
50.times do
  Post.create!(title: Faker::Beer.unique.name,
                  body: Faker::Hipster.sentence(3),
                  user_id: 1)
end
