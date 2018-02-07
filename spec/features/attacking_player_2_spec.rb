
feature 'attacking player 2' do
  scenario 'attacking player 2 - confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "Varg attacked Cornflakes"
  end

  scenario 'attack reduces hit points by 10' do 
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'Cornflakes HP: 90'
  end
end
