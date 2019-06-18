# frozen_string_literal: true

module V1
  class CitiesController < ApplicationController
    def index
      cities = City.select(:id, :name)
      json_response(cities)
    end
  end
end
