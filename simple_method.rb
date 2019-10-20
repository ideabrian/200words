#!/usr/bin/env ruby

def get_name()
  puts "What's your name?"
  name = gets.chomp
end

def get_category()
    puts "What's something in business you'd like to know more about?"
    return gets.chomp
end

def get_tip()
    category = get_category()
    puts "Who is somebody you follow that is really knowledgable about business #{category}?"
    pro = gets.chomp
    return pro
end
    
def get_expert()
    puts "Who is somebody you follow that is really knowledgable about business #{category}?"
    expert = gets.chomp
    return expert
end
    
print get_name()
# print get_tip()
# print get_expert()

def check_twitter()
  puts "Let's find them on Twitter"
  local_expert = get_tip()
  query = local_expert.gsub(' ', '%20')
  puts query
  system("open", "https://twitter.com/search?q=#{query}&src=typed_query")
end

check_twitter
