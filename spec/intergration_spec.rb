require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("the word puzzle path", :type => :feature) do 
  it('processes the user entry and return a word puzzle') do 
    visit('/')
    fill_in('words_to_puzzle', :with => "good good home")
    click_button("Create Puzzle")
    expect(page).to have_content("g--d g--d h-m-")
  end
end