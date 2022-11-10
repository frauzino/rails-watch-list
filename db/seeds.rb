100.times do
  @movie = Movie.create(
    title: Faker::TvShows::StrangerThings.character,
    overview: Faker::Games::Overwatch.quote,
    poster_url: 'https://source.unsplash.com/random',
    rating: rand(0.0..10.0)

  )

List.create(
  name: 'Test List'
)
end
