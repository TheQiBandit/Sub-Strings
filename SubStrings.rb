def substrings(words, dictionary)
  
  #Transform words argument into an array to iterate through
  words_arr = words.downcase.split(" ")
  
  #Iterate through each word in words
  result = words_arr.map do |word|
    #Compare each word in dictionary to words in words arguement 
    dictionary.map do |dict_word|
      word.scan(dict_word)
    end
  end
  
  #Final result was a multi-nested array, hence flatten, then reduce
  #with hash to count each repetetion
  final_result = result.flatten.reduce(Hash.new(0)) do |word, repetetions|
    word[repetetions] += 1
    word
  end

  print final_result
  
end


words = "Howdy partner, sit down! How's it going?"

dictionary = ["below","down","go","going","horn","how","howdy","it","i",
"low","own","part","partner","sit"]



substrings(words, dictionary)
