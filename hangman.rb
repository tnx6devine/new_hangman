def word_setup(secret_word)
	secret_word.length
end



def word_blanks(secret_word)
	blanks = []		
	word_setup(secret_word).times do
		blanks.push("_")
	end
	blanks
end

def guess_letter(secret_word, guess)
	secret_word = secret_word.split("")
	# assuming that secret word is now an array
	# ["d", "o", "g"]
	updated_array = word_blanks(secret_word)
	# creating a variable to store the array from previous function
	# ["_", "_", "_"]

if guess == secret_word[0]
	# guess of "d" is equal to "d" then
	updated_array[0] = guess
end
updated_array

end

