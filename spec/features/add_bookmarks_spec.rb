feature 'can add bookmarks' do
  scenario 'can add bookmark to bookmark_manager db' do
    visit '/bookmarks/new'
    fill_in('url', with: 'abc.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Save')
    expect(page).to have_link('Test Bookmark', href: 'abc.com')
  end
end