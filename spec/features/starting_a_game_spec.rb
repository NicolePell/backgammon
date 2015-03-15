require 'spec_helper'

feature 'Starting a new game' do

  scenario 'when opening the home page' do
    visit '/'
    expect(page).to have_content('Backgammon')
  end

  scenario 'when clicking on the start button' do
    visit '/'
    click_link 'Start a New Game'
    expect(page).to have_content('Ready to play?')
  end

  scenario 'then I see my board with checkers' do
    visit '/'
    click_link 'Start a New Game'
    
  end

end
