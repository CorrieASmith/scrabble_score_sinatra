require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('scrabble score', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('score', :with => 'apple')
    click_button('Tally')
    expect(page).to have_content(9)
  end
end
