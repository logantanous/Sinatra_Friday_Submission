require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word input', {:type => :feature}) do
  it('take in a word and definition and display the word with a link to that specific word') do
    visit('/')
    fill_in('name', :with => 'test_name')
    fill_in('definition', :with => 'test_definition')
    click_button('Go!')
    expect(page).to have_content('test_name')
    visit('words/1')
    expect(page).to have_content('test_name')
    expect(page).to have_content('test_definition')
    fill_in('definition2', :with => 'test_definition2')
    click_button('Go!')
    expect(page).to have_content('test_definition2')
  end
end
