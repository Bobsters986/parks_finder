require 'rails_helper'

RSpec.describe ParkFacade do
  subject(:facade) { described_class.new }

  describe 'instance methods' do
    context '#parks_by_state' do
      let(:parks) { facade.parks_by_state("TN") }

      it 'returns an array of parks for the given state' do
        expect(parks).to be_an(Array)
        expect(parks.first).to be_a(OpenStruct)
      end
    end
  end
end