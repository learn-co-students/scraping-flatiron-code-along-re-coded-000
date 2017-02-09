require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper

#   self.make_courses
#   Course.all.each do |course|
#     if course.title
#       puts "Title: #{course.title}"
#       puts "  Schedule: #{course.schedule}"
#       puts "  Description: #{course.description}"
#     end
#   end
# end
    # def print_courses
  def get_page
    # more code coming soon!
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end
  def get_courses
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    courses = doc.css(".post")
  end
  def make_courses
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    courses = doc.css(".post")
      courses.each do |element|
       obj = Course.new
       obj.title = element.css("h2").text
       obj.schedule = element.css(".date").text
       obj.description = element.css("p").text
     end
  end
end
