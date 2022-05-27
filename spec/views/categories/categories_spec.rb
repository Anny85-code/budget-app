require 'rails_helper'

RSpec.describe 'Test for Category page', type: :feature do
  describe 'Category page' do
    before :each do
      User.create(name: 'Bassey', surname: 'Peter', email: 'bassey@gmail.com', password: 'bbbbb123')
      visit new_user_session_path
      fill_in 'email', with: 'bassey@gmail.com'
      fill_in 'password', with: 'bbbbb123'
      click_button 'Log in'
    end

    it 'if signed successfully' do
      expect(page).to have_content('Signed in successfully.')
    end

    it 'if can see title' do
      expect(page).to have_content('CATEGORIES')
    end

    it 'if can see add category button' do
      expect(page).to have_content('Create new category')
    end

  end
end