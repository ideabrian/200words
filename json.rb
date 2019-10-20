#!/usr/bin/env ruby
require 'json'

file = File.read('test.json')
data_hash=JSON.parse(file)

print data_hash.keys
print "\n"
print data_hash["desc"]['Name'] + "\n"

# puts self.class.methods.to_json
