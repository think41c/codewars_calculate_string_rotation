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
		puts determine_length(string)
	end

	def determine_length(string)
		@length = @string.length
	end

	def rotations
	end

end

rotate = Rotate.new("any","yan")
