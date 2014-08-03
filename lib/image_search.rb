require 'google-search'

# Provides access to Google Image Search for query via #results
class ImageSearch
  attr_reader :query, :results

  def initialize(query)
    @query = query
  end

  def results
    image_search = Google::Search::Image.new(query: query)
    image_search.collect do |image|
      OpenStruct.new(src: image.uri)
    end
  end
end
