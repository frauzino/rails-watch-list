require 'open-uri'
require 'json'

url = "http://tmdb.lewagon.com/movie/top_rated"
page = URI.open(url).read
movies = JSON.parse(page)["results"]

puts "Cleaning the DB..."
List.destroy_all
Movie.destroy_all
puts "DB is clean!"

movies.each do |movie|
  Movie.create(
    title: movie['title'],
    overview: "#{Faker::Games::Overwatch.quote}. #{movie['overview']}",
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['backdrop_path']}",
    rating: movie['vote_average']

  )

List.create(
  name: 'Test List'
)
end
