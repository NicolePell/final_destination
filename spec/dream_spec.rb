require 'spec_helper'

describe Dream do

  context 'Demonstration that datamapper is working' do
    it 'should be created and retrieved from the database' do
      expect(Dream.count).to eq 0
      Dream.create(title: 'Climb Mount Kilimanjaro')
      expect(Dream.count).to eq 1

      dream = Dream.first

      expect(dream.title).to eq 'Climb Mount Kilimanjaro'

      dream.destroy

      expect(Dream.count).to eq 0
    end
  end
end
