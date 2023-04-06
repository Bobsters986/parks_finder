class ParksController < ApplicationController
  def index
    @state = params[:state]
    @parks = ParkFacade.new.parks_by_state(params[:state])
    # require 'pry'; binding.pry
  end
end