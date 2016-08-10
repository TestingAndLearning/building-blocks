dictionary = ["below","down","go","going","horn",
	"how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
	words = words.split(/\W+/)
	wordcount = Hash.new(0)

	words.each do |word|
		if dictionary.include? word.downcase
			wordcount[word] += 1
		end
	end

	puts wordcount.to_s
end

substrings("below", dictionary)

substrings("Howdy parter, sit down! How's it going?", dictionary)