# frozen_string_literal: true

module V1
  class NursesController < ApplicationController
    def index
      nurses = if verify_params(params)
                 Nurse.select(:id, :name, :age, :profile_link, :city_id)
                      .joins(:skills, :departments).where(skills: { id: skill_ids(params) })
                      .where(departments: { id: department_ids(params) })
                      .where(city_id: params[:city_id]).distinct
               else
                 { message: 'insufficient parameters' }
               end
      json_response(nurses)
    end

    private

    def verify_params(params)
      params[:skill_ids].present? && params[:department_ids].present? && params[:city_id].present?
    end

    def skill_ids(params)
      params[:skill_ids].split(',')
    end

    def department_ids(params)
      params[:department_ids]&.split(',')
    end
  end
end
