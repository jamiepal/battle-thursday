feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome Hello'
  end
end

feature 'Testing bookmark display' do
  scenario 'Can display list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'https://www.google.com'
  end
end
