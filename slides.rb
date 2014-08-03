require './lib/image_search.rb'
require 'highline/import'

puts("\nLet's build a slideshow..\n")

#
# What will we search for?
query = ask("\nSearch terms: ")
image_search = ImageSearch.new(query)
puts

#
# Should we use regular or fullscreen images?
image_style = nil
choose do |menu|
  menu.prompt = "How should images be displayed?  "
  menu.choice(:fullscreen) { image_style = 'fullscreen' }
  menu.choice(:regular) { image_style = 'regular' }
end

#
# Here's the presentation DSL..
presentation do

  # First Slide..
  slide('title', query: query)

  # Subsequent Slides.. one for each image
  image_search.results.each do |result|
    slide(image_style, src: result.src)
  end
end
