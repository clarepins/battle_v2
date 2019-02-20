def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Anu')
  fill_in(:player_2, with: 'Taz')
  click_button 'Submit'
end
