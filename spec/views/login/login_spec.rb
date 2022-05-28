require 'rails_helper'

RSpec.feature 'Tests for the Log in Page', type: :feature do
  background { visit new_user_session_path }
  scenario 'if there is form login' do
    expect(page.has_field?('email')).to be true
    expect(page.has_field?('password')).to be true
    expect(page.has_button?('Log in')).to be true
  end

  context 'Form Submission' do
    scenario 'if can login without credentials' do
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password.'
    end

    scenario 'if credentials are wrong' do
      within 'form' do
        fill_in 'email', with: 'gmail.com'
        fill_in 'password', with: 'secret'
      end
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password.'
    end

    scenario 'if credentials are right' do
      @user1 = User.create(name: 'Bassey', email: 'bbbbb@gmail.com',
                           password: 'basseysecret')

      within 'form' do
        fill_in 'email', with: @user1.email
        fill_in 'password', with: @user1.password
      end
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully'
    end
  end
end
