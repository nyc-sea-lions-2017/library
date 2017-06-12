require 'faker'

Book.delete_all


20.times do
  Book.create(title: Faker::Book.title, author: Faker::Book.author)
end
