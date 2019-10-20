#!/usr/bin/env ruby

require 'httparty'

puts "-------------------------"
puts "How Do We Get A Customer"
puts "-------------------------"

4.times do |n|
    puts "---" * (n+1)
end

puts "Enter a movie name"


# get user input
r = gets.chomp
movie = r
puts "You entered: \"#{r}\""

sleep(3)
puts "What's your Zip code?"
zip = gets.chomp.to_i

puts "Your Zip code: #{zip}"


# lookup movies by zip code
# class HTTParty
#     def self.bar
#         puts "class method"
#     end

#     def insta
#         puts "instance method"
#     end

#     def body
#         puts "Here's the body you requested"
#     end
# end

url = ""
response = HTTParty.new
# response.body

response.body
# response.code

# response.body

