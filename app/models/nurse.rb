# frozen_string_literal: true

class Nurse < ApplicationRecord
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :departments
  belongs_to :city
  SKILLS = ['Childcare', 'Assistant', 'Home Nursing', 'Supervisor', 'Eldercare']
  DEPARTMENTS = ['Ortho', 'Anaesthetics', 'Cardiology', 'Diagnostic', 'ICU']
end
