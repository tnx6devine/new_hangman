require "minitest/autorun"
require_relative "hangman.rb"
class TestEvenOdd < Minitest::Test

def test_assert_that_1_is_1
	assert_equal(1, 1)
end

def test_assert_that_dog_length_is_3
	secret_word = "dog"
	assert_equal(3, word_setup(secret_word))
end

def test_assert_that_dog_is_three_underscores
	secret_word = "dog"
	assert_equal(["_", "_", "_"], word_blanks(secret_word))
end

def test_assert_that_wombat_is_six_blanks
	secret_word = "wombat"
	assert_equal(["_", "_", "_", "_", "_", "_"], word_blanks(secret_word))
end

def test_assert_that_d_is_in_dog
	secret_word = "dog"
	assert_equal(["d", "_", "_"], guess_letter(secret_word, guess))
end

def test_assert_that_o_is_in_dog
	secret_word = "dog"
	guess = "o"
	assert_equal(["_", "o", "_"], guess_letter(secret_word, guess))
end

def test_assert_that_w_is_not_in_dog
	secret_word = "dog"
	guess = "w"
	assert_equal(["_", "_", "_"], guess_letter(secret_word, guess))
end

def test_assert_that_wrong_guess_adds_one_to_wrong_counter
	secret_word = "dog"
	assert_equal(1, wrong_guess_tracker(secret_word))

end

# def test_assert_that_6_wrong_guesses_is_a_loser
# secret_word = "dog"
# 	assert_equal(true, determine_loser(secret_word))

# end
end












