require 'rails_helper'

describe 'creating comment', type: :feature do
  let(:user) { user = User.create!(email: 'user@example.com', password: 'password', first_name: 'First', last_name: "Last") }
  
  before(:each) do
    login_as(user, scope: :user)
  end

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