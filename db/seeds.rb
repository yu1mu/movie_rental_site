# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CATEGORY = ["해외드라마", "영화", "국내드라마", "예능"]
GENDER = ["Male", "Female"]

20.times.each do 
    movie = Movie.create(movie_name: Faker::Movie.title, movie_type: CATEGORY.sample, movie_description: Faker::Movie.quote)
    
    5.times.each do 
        actor = Actor.create(actor_name: Faker::Name.name, actor_gender: GENDER.sample, age: rand(10..20))
        AppearedIn.create(actor_id: actor.id, movie_id: movie.id)
    end 
end 
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?