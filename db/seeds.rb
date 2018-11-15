Post.destroy_all
Comment.destroy_all
Category.destroy_all
User.destroy_all
PostCategory.destroy_all

def employment
employment_data = ["student", "professional", "retired", "unemployed"]
employment_data.sample
end

def create_date
  month = rand(1..12)
  day = rand(1..28)
  year = rand(1940..2005)
  birth_date= "#{month}/#{day}/#{year}"
end

100.times do
  User.create(username: Faker::Twitter.screen_name,
    password: Faker::Lorem.word,
    date_of_birth: create_date,
    employment_status: employment,
    location: Faker::Address.city)
end

100.times do
  Post.create(title: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph)
end

100.times do
  Comment.create(content: Faker::Lorem.sentence,
      user_id: rand(1..100),
      post_id: rand(1..100))
end

100.times do
  PostCategory.create(post_id: rand(1..100),
    category_id: rand(1..13))
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

