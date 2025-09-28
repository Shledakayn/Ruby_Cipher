# DISPLAY a message to the user, asking the messsage and the key
puts "Welcome to Caesar Cipher"
puts "Type your message:\n" # store the message
message = gets.chomp
puts "How many shifts you want?\n" # store the key
key_shift = gets.chomp

cipher_alpha = [ 
'A', 'B', 'C','D', 'E', 'F', 'G', 'H', 'I', 
'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
]
encrypted_message = []

# Take the message from the input and then criptography,
# using the shifts the user has selected.
message_array = message.chars
message_array.each do |letter|
  searching = cipher_alpha.find_index(letter.upcase) + key_shift.to_i
  encrypted_message << cipher_alpha[searching]
end

p encrypted_message.join.downcase!.capitalize!
