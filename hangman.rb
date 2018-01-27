def word_setup(secret_word)
	secret_word.length
end
$blanks = []
def word_blanks(secret_word)
	
	word_setup(secret_word).times do
		$blanks.push("_")
	end
	$blanks
end

def guess_letter(secret_word, guess)
	secret_word = secret_word.split("")
# ["d", "o", "g"]
if guess == secret_word[0]
	$blanks[0] = guess
end


end

