
feature 'Battle form' do
  scenario 'Can fill in form' do
    sign_in_and_play
    expect(page).to have_content "Varg and Cornflakes, you are doomed!"
  end
end