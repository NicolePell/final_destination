require 'spec_helper'

feature 'a user can login' do
  xscenario 'when entering their username and password on the homepage' do
    visit '/'
    fill_in 'email', with: 'pellicena@gmail.com'
    fill_in 'password', with: 'dreamBig'
    click_button 'submit'
    expect(page).to have_content 'You are successfully signed in'
  end
end
