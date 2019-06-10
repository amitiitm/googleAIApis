# frozen_string_literal: true

module V1
  class CitiesController < ApplicationController
    def index
      cities = City.all
      json_response(cities)
    end
  end
end
