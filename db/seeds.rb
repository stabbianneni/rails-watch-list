require 'json'
require 'open-uri'

Movie.destroy_all

url = "https://tmdb.lewagon.com/movie/top_rated"
results_top = JSON.parse(URI.open(url).read)["results"]

results_top.each do |result|
  Movie.create(
    title: result["original_title"],
    overview:result["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500#{result["poster_path"]}",
    rating:result["vote_average"])
end

p Movie.count
