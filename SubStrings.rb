def substrings(words, dictionary)
  words_arr = words.split(" ")
  result = words_arr.map do |word|
    dictionary.map do |dict_word|
      word.scan(dict_word)
    end
  end

  final_result = result.flatten.reduce(Hash.new(0)) do |word, repetetions|
    word[repetetions] += 1
    word
  end

  print final_result
  
end


words1 = "Howdy partner, sit down! How's it going?"

dictionary1 = ["below","down","go","going","horn","how","howdy","it","i",
"low","own","part","partner","sit"]



substrings(words1, dictionary1)

# result.flatten.reduce(Hash.new(0)) do |word, repetetions|
#   word[repetetions] += 1
#   word
# end