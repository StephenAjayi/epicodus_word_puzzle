require('rspec')
require('word_puzzle')
require('pry')

describe('String#word_puzzle') do 
  it('changes a single letter to a "-" if it is a vowel') do 
    expect("a".word_puzzle()).to(eq("-"))
  end
  it('changes the vowels in a single word string to "-"') do 
    expect("good".word_puzzle()).to(eq("g--d"))
  end
  it('changes the vowels in a multiple word string to "-"') do 
    expect("we are here".word_puzzle()).to(eq("w- -r- h-r-"))
  end
end 
