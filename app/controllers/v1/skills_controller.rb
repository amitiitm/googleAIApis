class V1::SkillsController < ApplicationController
  def index
  	skills = Skill.all
    json_response(skills)
  end
end
