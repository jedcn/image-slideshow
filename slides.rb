require './lib/image_search.rb'
require 'highline/import'

# Ask for a search term..
query = ask 'Search For: '

image_search = ImageSearch.new(query)

presentation do

  slide 'title', query: query

  image_search.results.each do |result|
    slide 'full_screen_image', src: result.src
  end

end
