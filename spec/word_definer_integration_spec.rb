require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the Word-Definer path', {:type => :feature} do
  it 'it returns a user chosen word along with user definitions' do
    visit '/'
    click_link 'Add New Word'

    expect(page).to have_content ''
    fill_in 'word', :with => 'Loquacity'
    click_button 'Add Word'

    expect(page).to have_content 'Loquacity'
    click_button 'Add definition'

    fill_in 'definition', :with => 'Loquacity'
    expect(page).to have_content 'Loquacity, Marko'

    click_link 'My words!'

    expect(page).to have_content 'Loquacity'
  end
end
