require './lib/enigma'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/shift'

file = File.open(ARGV[0], "r")
message = file.read.chomp
file.close

enigma = Enigma.new

encryption = enigma.encrypt(message)

new_file = File.open(ARGV[1], "w")
new_file.write(encryption[:encryption])
new_file.close

puts "Created '#{ARGV[1]}' with the key #{encryption[:key]} and date #{encryption[:date]}."
