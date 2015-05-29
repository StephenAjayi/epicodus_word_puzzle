require('rspec')
require('word_puzzle')
require('pry')

describe('String#word_puzzle') do 
  it('changes a single letter to a "-" if it is a vowel') do 
    expect("a".word_puzzle).to(eq("-"))
  end 
end 