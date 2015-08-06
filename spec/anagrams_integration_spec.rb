require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('/', {:type => :feature}) do
  it("loads the index page correctly") do
    visit('/')
    expect(page).to have_content("Your word")
  end
  it("returns the correct list of anagrams for a word") do
    visit('/')
    fill_in('user_word', :with => "fox")
    fill_in('words', :with =>"oxf,xof,puppy")
    click_button("Go!")
    expect(page).to have_content("oxf, xof")
  end
end
