class String
  define_method(:word_puzzle) do 
    
    letter = self 
    vowels = ["a","e","i","o","u"]
    
    if vowels.include?(letter)
      letter.replace("-")
    end
    
    letter
  end
end
