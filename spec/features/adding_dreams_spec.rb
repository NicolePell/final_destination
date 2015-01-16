require 'spec_helper'

feature 'a user can add dreams to their list' do
  scenario 'when visiting the homepage' do
    expect(Dream.count).to eq 0
    visit '/'
    add_dream('Climb Mount Kilimanjaro')
    expect(Dream.count).to eq 1
    dream = Dream.first
    expect(dream.title).to eq 'Climb Mount Kilimanjaro'
  end

  def add_dream(title)
    within('#new-dream') do
      fill_in 'title', with: title
      click_button 'Add dream'
    end
  end
end
