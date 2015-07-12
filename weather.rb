require 'rubygems'
require 'yahoo_weatherman'

puts "Enter WOEID:"
@woeid = gets.to_i

client = Weatherman::Client.new
response = client.lookup_by_woeid (@woeid)

puts response.location['city']
puts response.location['country']
puts response.condition['date']

puts response.condition['temp']
puts response.condition['text']

