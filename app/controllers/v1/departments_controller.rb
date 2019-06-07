class V1::DepartmentsController < ApplicationController
  def index
  	departments = Department.all
    json_response(departments)
  end
end
