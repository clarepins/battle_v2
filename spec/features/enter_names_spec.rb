feature 'Names' do
  scenario 'Submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Anu Vs Taz'
  end
end
