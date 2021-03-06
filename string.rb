# CodeWars - Calculate String Rotation
# The goal of this exercise is to write a method that takes two strings as parameters and returns an integer n, where n is equal to 
# the amount of spaces "rotated forward" the second string is relative to the first string (more precisely, to the first character of 
# the first string).
# For instance, take the strings "fatigue" and "tiguefa". In this case, the first string has been rotated 5 characters forward to 
# produce the second string, so 5 would be returned.
# If the second string isn't a valid rotation of the first string, the method returns -1.
# Examples:
# "coffee", "eecoff" => 2
# "eecoff", "coffee" => 4
# "moose", "Moose" => -1
# "isn't", "'tisn" => 2
# "Esham", "Esham" => 0
# "dog", "god" => -1

class Rotate
	def initialize(string, rotated_string)
		@string = string
		@rotated_string = rotated_string
		determine_length(string)
		quick_check
		convert_string_to_array
		convert_rotated_string_to_array
		rotations
	end

	def convert_string_to_array
		@string = @string.split("")
	end
	
	def convert_rotated_string_to_array
		@rotated_string = @rotated_string.split("")
	end

	def quick_check
		if @string.length != @rotated_string.length
			abort("-1")
		elsif @string == @rotated_string
			abort("They're identical. It took 0 rotations.")
		end

	end

	def determine_length(string)
		@length = @string.length
	end

	def identical?
		puts "Checking for identical nature of #{@string} vs #{@rotated_string}"

		x = 0
		counter = 0
		until counter == @length
			counter += 1
			if @string[x] == @rotated_string[x]
				x += 1
				result = true
			else 
				result = false
				counter = @length # This prevents the loop from looking anymore, a single false means it's not identical
			end
		end
		result
	end

	def rotate_once
		rotated_index  = 0
		moving_letter  = 0
		counting       = 0 

		@length.times do 
			temp_last  = @rotated_string[@length-1]
			temp_first = @rotated_string[moving_letter]
			@rotated_string[@length-1]     = temp_first
			@rotated_string[moving_letter] = temp_last
			moving_letter  += 1
		end
		@rotated_string
	end

	def rotations
		rotate_counter = 0
		puts "The word starts out as #{@rotated_string}"	
		@length.times do 
			rotate_once
			rotate_counter += 1
			puts "They're identical. It took #{rotate_counter} rotation(s)." if identical?
		end
 	end
end

rotate = Rotate.new("aa","aa")
