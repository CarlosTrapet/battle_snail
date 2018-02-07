
feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'In his house at Rlyeh, dead Cthulhu waits dreaming. Phnglui mglwnafh Cthulhu Rlyeh wgahnagl fhtagn'
  end
end




