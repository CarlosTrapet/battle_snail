
feature 'attacking player 2' do 
  scenario 'attacking player 2 - confirmation' do
    sign_in_and_play
    expect(page).to have_content 'attack confirmed'
  end
end