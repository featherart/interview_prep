require 'nokogiri'
require 'open-uri'


url = "http://www.urbandictionary.com/define.php?term=#{ARGV[0]}"

d = Nokogiri::HTML(open(url))
puts d.css(".word").last.text
puts d.css(".definition").last.text

puts d.css(".word").first.text
puts d.css(".definition").first.text