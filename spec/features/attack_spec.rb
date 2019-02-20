feature 'attack player2 and get confirmation' do
  scenario 'Player 1 attacks' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Anu attacked Taz'
  end
end
