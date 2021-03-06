require 'rails_helper'

feature 'liking posts' do
  before do
    testpost = Post.create(caption: 'Here is a test post')
  end

  scenario 'a user can like a post, which increments the post like counter', js: true do
    visit '/posts'
    click_link 'Like'
    expect(page).to have_content('1 Like')
  end
end
