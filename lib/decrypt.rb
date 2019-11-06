require './lib/enigma'
require './lib/key_generator'
require './lib/offset_generator'
require './lib/shift'

file = File.open(ARGV[0], "r")
message = file.read.chomp
file.close

enigma = Enigma.new

decryption = enigma.decrypt(message, ARGV[2], ARGV[3])

new_file = File.open(ARGV[1], "w")
new_file.write(decryption[:decryption])
new_file.close

puts "Created '#{ARGV[1]}' with the key #{ARGV[2]} and date #{ARGV[3]}."
