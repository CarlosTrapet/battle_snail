
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'In his house at Rlyeh, dead Cthulhu waits dreaming. Phnglui mglwnafh Cthulhu Rlyeh wgahnagl fhtagn'
  end
end

feature 'Battle form' do
  scenario 'Can fill in form' do
    name1 = 'Varg'
    name2 = 'Cornflakes'
    visit '/'
    fill_in :player_1_name, with: name1
    fill_in :player_2_name, with: name2
    click_button 'Fight!'
    expect(page).to have_content "Varg and Cornflakes, you are doomed!"
  end
end

