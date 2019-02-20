feature 'Names' do
  scenario 'Submitting names' do
    visit('/')
    fill_in(:player_1, with: 'Anu')
    fill_in(:player_2, with: 'Taz')
    click_button 'Submit'
    expect(page).to have_content 'Anu Vs Taz'
  end
end

feature 'Hit points' do
  scenario 'Player 2 hit points' do
    visit('/')
    fill_in(:player_1, with: 'Anu')
    fill_in(:player_2, with: 'Taz')
    click_button 'Submit'
    expect(page).to have_content 'Taz: 60HP'
  end
end
