require 'rails_helper'

describe "the signin process", type: :feature do
  it "signs me in" do
    user = FactoryGirl.create(:user)    
    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end

  it "signup me" do
    user = FactoryGirl.build(:user) 
    visit '/users/sign_up'
    within("#new_user") do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      fill_in 'Password confirmation', with: user.password
      fill_in 'First name', with: user.first_name
      fill_in 'Last name', with: user.last_name
    end  
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end