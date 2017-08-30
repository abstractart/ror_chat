require 'rails_helper'

describe 'creating comment', type: :feature do
  let(:user) { user = User.create!(email: 'user@example.com', password: 'password', first_name: 'First', last_name: "Last") }
  
  before(:each) do
    login_as(user, scope: :user)
  end

  context 'index' do
    before(:each) do
      user.comments << Comment.new(text: FFaker::Lorem.characters(128))
    end
    it "shows all comments" do
      visit '/'
      expect(page).to have_css('.comment', count: 1)
    end
  end

  context 'create comment' do
    it 'works well', js: true do
      text = 'My Simple text'
      visit '/'
      click_link 'Add Comment'
      within("#new_comment") do
        fill_in 'Text', with: text
      end
      click_button 'Create Comment'
      expect(page).to have_content text
    end
  end

  context 'delete comment' do
    it "deletes well", js: true do
      text = 'My Simple text'
      user.comments << Comment.new(text: text)
      visit '/'
      click_link '×'
      expect(page).to have_no_content(text)
    end
  end

  context 'edit_comment' do
  end
end