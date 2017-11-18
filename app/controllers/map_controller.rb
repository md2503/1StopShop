class MapController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # require 'json'
  # file = File.read('app/assets/javascripts/carrefour.json')
  # data_hash = JSON.parse(file)
  # print data_hash
  
  # #@happy_hours = HappyHour.all
  # @geojson = data_hash
  
  # def index
  #   ##@events = Event.all
  #   @geojson = Array.new
  #   ##build_geojson(event, @geojson)
  # end
  
  # respond_to do |format|
  #   format.html
  #   format.json { render json: @geojson }
  # end
  
  # def build_geojson(events, geojson)
  #   events.each do |event|
  #     geojson << GeojsonBuilder.build_event(event)
  #   end
  # end

  
  # @happy_hours.each do |happy_hour|
  #   @geojson << {
  #     type: 'Feature',
  #     geometry: {
  #       type: 'Point',
  #       coordinates: [happy_hour.longitude, happy_hour.latitude]
  #     },
  #     properties: {
  #       name: happy_hour.name,
  #       address: happy_hour.street,
  #       :'marker-color' => '#00607d',
  #       :'marker-symbol' => 'circle',
  #       :'marker-size' => 'medium'
  #     }
  #   }
  # end
  
end
