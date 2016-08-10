def caeser_cipher(string, shift=1)
	r = "" #result
shift = shift.abs #Takes positive integers only. 

	string.split("").each do |letter|

		tshift = shift % 35			#Prevents shift from being needlessly high. 
		
		uptemp = 90 - letter.ord	#Difference between Z and curren letter. 
		upshift = tshift - uptemp	#How much the shift should add starting from A. 

		downtemp = 122 - letter.ord
		downshift = tshift - downtemp

		#Shifts any lowercase and uppercase letters
		if /[a-zA-Z]/.match(letter) 

			#If capital letters and shift goes past Z
			if ((letter.ord >= 65 && letter.ord <= 90) && ((letter.ord + shift) > 90) )
				r << (65 + upshift - 1).chr

			#If lowercase letters and shift goes past z
			elsif ((letter.ord >= 97 && letter.ord <= 122) && ((letter.ord + shift) > 122) )
				r << (97 + downshift - 1).chr

			#Shifts characters if no problems. 
			else
				r << (letter.ord + shift).chr
			end

		#Inserts symbols/spaces/other characters as is. 
		else
			r << letter
		end
	end

	puts r, shift

	#puts "z".ord #122
	#puts "Z".ord #90
	#puts "a".ord #97
	#puts "A".ord #65

end

caeser_cipher("abc DeFg WWyy", 5)