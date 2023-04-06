require 'rails_helper'

RSpec.describe ParkService do
  describe 'instance methods' do
    context '#get_state_parks' do
      it 'returns a status of 200' do
        parks = ParkService.new.get_state_parks("TN")

        expect(parks).to be_a(Hash)
        expect(parks.keys).to eq([:total, :limit, :start, :data])
        expect(parks[:data]).to be_an(Array)
      end
    end
  end
end