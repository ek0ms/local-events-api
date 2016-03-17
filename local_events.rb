# your code, here.
require 'json'
require 'httparty'
require 'pry'

data = HTTParty.get("https://api.seatgeek.com/2/events?venue.state=MA&venue.city=Boston")

first_array = []
second_array = []
events_array = []
data.each do |data|
  first_array << data
end

first_array[1].each do |data|
  second_array << data
end

second_array[1].each do |data|
  events_array << data
end

events_array.each do |event|
  if event["venue"]["city"] == "Boston"
    puts "#{event["title"]} @ #{event["venue"]["name"]}"
  end
end
