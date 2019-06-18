# frozen_string_literal: true

module V1
  class DepartmentsController < ApplicationController
    def index
      departments = Department.select(:id, :name)
      json_response(departments)
    end
  end
end
