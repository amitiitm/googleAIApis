# frozen_string_literal: true

module V1
  class SkillsController < ApplicationController
    def index
      skills = Skill.all
      json_response(skills)
    end
  end
end
