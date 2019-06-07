class V1::CitiesController < ApplicationController
  def index
  	cities = City.all
    json_response(cities)
  end
end
