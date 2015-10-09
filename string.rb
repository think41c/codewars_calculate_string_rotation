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
		end
	end

	def determine_length(string)
		@length = @string.length
	end

	def identical?
		x = 0
		counter = 0
		until counter == @length
			counter += 1
			if @string[x] == @rotated_string[x]
				x += 1
				result = true
			else 
				result = false
			end
		end
		result
	end

	def rotations
		rotated_index  = 0
		rotate_counter = 0
		@length.times do 
			if identical? 
				puts "They're identical. It took #{rotate_counter} rotation(s)." 
				break
			end
			# To rotate, we can say for a 3 index array that 2 becomes 0, 1 becomes 2, and 2 becomes 0.
			# Each rotation will require a loop as long as the length of the array to give the final result. 
			# for [A,B,C] it would transform like:
			# C,B,C  save A/0 in temp.  (2 becomes 0)
			# C,A,C  save B/1 in temp2. (temp becomes 1)
			# C,A,B  temp2/B becomes [2]
			# Rotating again requires the same logic as before.
			rotate_counter += 1
		end
	end
end

rotate = Rotate.new("ab","ab")
