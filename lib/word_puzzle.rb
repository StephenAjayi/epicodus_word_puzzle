class String
  define_method(:word_puzzle) do 
    
    words = self.split(" ") 
    vowels = ["a","e","i","o","u"]
    
    words.each() do |word|
      word_letters = word.split("")
      
      word_letters.each() do |word_letter|
        if vowels.include?(word_letter)
          word_letter.replace("-")
        end
        
        new_word = word_letters.join("")
        word.replace(new_word)
      end
   
    end
    words.join(" ")
  
  end

end