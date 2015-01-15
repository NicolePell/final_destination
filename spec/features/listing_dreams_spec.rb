require 'spec_helper'

feature 'a user can see their list of dreams' do

  before(:each) do
    Dream.create(title: 'Climb Mount Kilimanjaro')
  end

  scenario 'when visiting the homepage' do
    visit '/'
    expect(page).to have_content 'Climb Mount Kilimanjaro'
  end
end
