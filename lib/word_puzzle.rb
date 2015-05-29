class String
  define_method(:word_puzzle) do 
    
    word_letters = self.split("") 
    vowels = ["a","e","i","o","u"]
    
    word_letters.each() do |word_letter|
      if vowels.include?(word_letter)
        word_letter.replace("-")
      end
    end
    word_letters. join("")
  end
end