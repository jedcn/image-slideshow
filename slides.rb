require 'highline/import'
query = ask 'Search For: '

presentation do
  slide 'title', query: query
end
