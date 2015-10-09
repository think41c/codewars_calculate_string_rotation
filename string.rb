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
				true
			else 
				false
			end
		end
	end

	def rotations
		rotated_index = 0
		if identical? 
			puts "They're identical. Worry about a counter later."
		end

		@length.times do 
			# This simply needs to rotate the rotated_word around and then check if identical.
			if @rotated_string[rotated_index] != @string[0]
				puts @string[0]
				puts @rotated_string[rotated_index]
				puts "They're not the same"
				rotated_index += 1
			end

		end

		# if @string[0]
		# begin to compare to see if the arrays are equal to one another. If not, rotate them once. Add a counter, and check again.
		# repeat for as much as the string has the value of its length. 
	end

end

rotate = Rotate.new("anz","yan")
