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
	array_counter = 0
	word_length = word_setup(secret_word)

	until array_counter == word_length
# waiting for the end of the word
		if guess == secret_word[array_counter]
			updated_array[array_counter] = guess
			# checking each letters position
		end
		array_counter += 1
		# updating the letter position
	end

	updated_array

end












