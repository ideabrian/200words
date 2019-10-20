#! /usr/bin/env ruby

class Words
    attr_accessor :wc, :words

    def initialize
        @wc = 0
        @words = []
    end

    def write()
        puts "Okay, let's write:"
    
        puts "The Writing Loop"
        @words = []
        puts "Currently, your WC is #{@wc}"

        def get_title()
            puts "Give your writing a title:"
            return gets.chomp
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
    
    
end

words = Words.new
puts "Welcome to 200 Words a Day"
puts
puts "Hit Enter to WRITE!"
gets.chomp == '' ? words.write() : words.quit()

