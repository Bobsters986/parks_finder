require 'ostruct'

class ParkFacade
  attr_reader :service

  def initialize
    @service = ParkService.new
  end

  def parks_by_state(state)
    service.get_state_parks(state)[:data].map do |park_data|
      OpenStruct.new(
        full_name: park_data[:fullName],
        description: park_data[:description],
        directions: park_data[:directionsInfo],
        hours_operation: park_data[:operatingHours].first[:standardHours]
      )
    end
  end
end