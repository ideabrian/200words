#! /usr/bin/env ruby
require 'date'
puts DateTime.now()
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
        def get_input(words)
            @words += words
            input = gets
            if input.chomp == 'done'
                puts "Done? - you wrote [#{@wc} words]"
                puts @words.join("\n").chomp
                filename = get_title + '.txt.'
                puts "Writing #{filename} to file"
                File.write(filename, @words.join("\n").chomp)
                exit
            elsif input.chomp == ''
                get_input(["\n"])
            else
                words.push = input.chomp
                new_words = words[-1].split(' ').size
                puts "WC: #{@wc += new_words}"
                input = ''
                get_input(words)
            end
        end
        get_input(words)
    end

    def quit()
        puts "Okay, bye for now."
        exit
    end
    
    
end

words = Words.new
puts "Welcome to 200 Words a Day"
puts
puts "Ready to get started?"
gets.chomp[0].downcase == 'y' ? words.write() : words.quit()


