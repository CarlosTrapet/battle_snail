
feature 'attacking player 2' do
  scenario 'attacking player 2 - confirmation' do
    sign_in_and_play
    click_button('attack p2')
    expect(page).to have_content "Varg attacked Cornflakes"
  end
end
