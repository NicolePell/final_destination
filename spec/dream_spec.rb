require 'spec_helper'

describe Dream do

  context 'database is working correctly' do
    it 'should be created and retrieved from the database' do
      expect(Dream.count).to eq 0
      Dream.create(title: 'Climb Mount Kilimanjaro')
      expect(Dream.count).to eq 1
      dream = Dream.first
      dream.destroy
      expect(Dream.count).to eq 0
    end

    it 'should have a title' do
      Dream.create(title: 'Climb Mount Kilimanjaro')
      dream = Dream.first
      expect(dream.title).to eq 'Climb Mount Kilimanjaro'
    end
  end
end
