class Nurse < ApplicationRecord
	has_and_belongs_to_many :skills
	has_and_belongs_to_many :departments
	belongs_to :city
end
