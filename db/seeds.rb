Post.destroy_all
Comment.destroy_all
Category.destroy_all

5.times do
  Post.create(title: Faker::Book.title, content: Faker::Lorem.paragraph)
end

5.times do
  Comment.create(content: Faker::Lorem.sentence)
end


Category.create(name: "Depression")
Category.create(name: "Anxiety")
Category.create(name: "Diet")
Category.create(name: "Addiction")
Category.create(name: "Physical Disability")
Category.create(name: "Phobia")
Category.create(name: "Suicide")
Category.create(name: "Romance")
Category.create(name: "Death")
Category.create(name: "School")
Category.create(name: "Work")
Category.create(name: "Family")
Category.create(name: "Friends")

