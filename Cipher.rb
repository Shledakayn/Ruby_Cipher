def encrypt_message(message, key)
  encrypted_message = []
  
  alphabet = ['A', 'B', 'C','D', 'E', 'F', 'G', 'H', 'I','J','K', 'L', 'M', 'N', 'O', 'P', 'Q',  'R','S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ]
  
  message.chars.each do |char|
    index_in_alphabet = alphabet.find_index(char.upcase)

  if index_in_alphabet
    new_index = (index_in_alphabet - key) % alphabet.length
    encrypted_message << alphabet[new_index]
  else 
    encrypted_message << char 
  end 
end 

final_output = encrypted_message.join.downcase.capitalize
puts final_output
end 

encrypt_message("Hello it's me again", 20)


