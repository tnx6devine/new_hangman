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

def guess_letter(secret_word, test_guess)
	puts "enter guess"
	$guess = test_guess
	if test_guess == nil
	$guess = gets.chomp
	end
	secret_word = secret_word.split("")
	wrong_counter = 0
	updated_array = word_blanks(secret_word)
	array_counter = 0
	word_length = word_setup(secret_word)
	until wrong_counter == 6 || updated_array == secret_word
			until array_counter == word_length
# waiting for the end of the word
				if $guess == secret_word[array_counter]
						updated_array[array_counter] = $guess
					end
			# checking each letters position
			end
			array_counter += 1
		if secret_word.include?($guess) == false
		wrong_counter += 1
		end

	# secret_word = secret_word.split("")
	# assuming that secret word is now an array
	# ["d", "o", "g"]
	
	# creating a variable to store the array from previous function
	# ["_", "_", "_"]
	


		# updating the letter position
	end

	updated_array

end

# def wrong_guess_tracker(secret_word)
# wrong_counter = 0
# guess_letter(secret_word)
# if secret_word.include?($guess) == false
# 	wrong_counter += 1
# end
# wrong_counter
# end

# def determine_loser(secret_word)
# 	until wrong_guess_tracker(secret_word) == 6
# 		wrong_guess_tracker(secret_word)
# 	end 
# 	puts "You lose"
# 	true
# end








