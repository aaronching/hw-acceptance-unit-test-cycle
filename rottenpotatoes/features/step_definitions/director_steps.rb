Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |movie, director|
  movie = Movie.find_by_title(movie.gsub(/\A"+(.*?)"+\Z/m, '\1'))
  expect(movie.director).to eq(director)
end