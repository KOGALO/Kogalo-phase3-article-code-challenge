require_relative './app/models/article.rb'
require_relative './app/models/author.rb'
require_relative './app/models/magazine.rb'

author1 = Author.new("Kepher Ogalo")
author2 = Author.new("Sharon Kepher")

magazine1 = Magazine.new("Fashion Weekly", "Fashion")
magazine2 = Magazine.new("Tech Today", "Technology")

article1 = Article.new(author1, magazine1, "Latest Fashion Trends")
article2 = Article.new(author2, magazine1, "Summer Style Guide")
article3 = Article.new(author1, magazine2, "Introduction to AI")
article4 = Article.new(author2, magazine2, "Best Gadgets of the Year")

puts "Author: #{author1.name}"
puts "Articles by #{author1.name}:"
author1.articles.each do |article|
  puts "- #{article.title}"
end

puts "\nMagazine: #{magazine1.name}"
puts "Contributors to #{magazine1.name}:"
magazine1.contributors.each do |contributor|
  puts "- #{contributor.name}"
end

puts "\nMagazine: #{magazine2.name}"
puts "Article titles for #{magazine2.name}:"
magazine2.article_titles.each do |title|
  puts "- #{title}"
end
