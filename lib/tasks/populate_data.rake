namespace :populate_data do
  desc "Generate Nurses Data"
  task generate_nurses: :environment do
  	require 'faker'
  	city = City.first
  	1.upto(500) do |i|
  		name = Faker::Name.name
  		email = Faker::Internet.email
			nurse = Nurse.create(name: name, age: 28, profile_link: "http://#{email}", city_id: city.id)
			nurse.skills << Skill.find_or_create_by(name: Nurse::SKILLS.sample)
			nurse.departments << Department.find_or_create_by(name: Nurse::DEPARTMENTS.sample)
		end
  end

	desc 'Update Skills Name'
  task update_skills: :environment do
  	Skill.where(name: Nurse::SKILLS[0]).first.update_attributes(name: 'Peds Med-Surg')
  	Skill.where(name: Nurse::SKILLS[1]).first.update_attributes(name: 'eClinical works')
  	Skill.where(name: Nurse::SKILLS[2]).first.update_attributes(name: 'Critical Care')
  	Skill.where(name: Nurse::SKILLS[3]).first.update_attributes(name: 'Care Evolution')
  end
end