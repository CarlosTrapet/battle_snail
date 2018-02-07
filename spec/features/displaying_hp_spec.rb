
feature 'Displaying hit points' do 
  scenario 'Displays Player 2 HP' do 
    sign_in_and_play
    expect(page).to have_content "Cornflakes: 100 HP"
  end
end