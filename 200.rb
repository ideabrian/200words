#! /usr/bin/env ruby
require 'curb'

class Words
    attr_accessor :wc, :words

    def initialize
        @wc = 0
        @words = []
        @title = ''
    end

    def write()
        puts "Okay, let's write:"
    
        puts "The Writing Loop"
        @words = []
        puts "Currently, your WC is #{@wc}"

        def get_title()
            puts "Give your writing a title:"
            @title = gets.chomp
            return @title
        end
        
        def get_input(words=[])
            @words + words
            input = gets
            if input.chomp == 'done'
                puts "Done? - you wrote [#{@wc} words]"
                
                filename = get_title + '.md'
                puts "Writing #{filename} to file"
                File.write(filename, @words.join(""))
                puts @words
                post()
                exit
            else
                @words.push(input)
                new_words = @words[-1].split(' ').size
                puts "WC: #{@wc += new_words}"
                input = ''
                get_input()
            end
        end
        get_input()
    end

    def quit()
        puts "Okay, bye for now."
        exit
    end

    def set_access_rights()
        puts "1. Private or 2. Protected (1 / 2)"
        response = gets.chomp
        if response == "1"
            return "private"
        elsif response == "2"
            return "protected"
        else
            return "public"
        end
    end


    def post()
        puts "WE'RE IN POST"
        # First, let's ensure we have all the form-field values we need

        api_key = ENV["api_key_200wad"]
        posturl="https://200wordsaday.com/api/texts?api_key=" + api_key
        
        title = @title
        content = @words.join("")
        access_rights = set_access_rights()
        status = "draft"
        puts "API_KEY: " + api_key
        puts "URL: " + posturl
        puts "@title: " + @title
        puts "title: " + title
        puts "content: " + content
        puts "access_rights: " + access_rights
        puts "status: " + status
        
        body_str = "title=#{title}&categories[]=%23ok&categories[]=%23test&content=#{content}&status=draft"
        http = Curl.post(posturl, {:title => title, :content => content, :access_rights => access_rights})
        puts http.body_str

        system("open", "https://200wordsaday.com/me/words")
    end
    
    
end

words = Words.new
puts "Welcome to 200 Words a Day"
puts
puts "Hit Enter to WRITE!"
gets.chomp == '' ? words.write() : words.quit()

