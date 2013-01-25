Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
	Movie.create!(movie)
  end
end

Then /the director of "(.*)" should be "(.*)"/ do |name1,name2|
  find = Movie.find_by_title(name1)
  assert name2 == find.director
end
