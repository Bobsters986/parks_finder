class ParkService
  
  def get_state_parks(state)
    response = conn.get("parks?stateCode=#{state}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: "https://developer.nps.gov/api/v1/", params: { api_key: ENV["NPS_API_KEY"] })
  end
end