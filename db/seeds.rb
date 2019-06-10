# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
city = City.find_or_create_by(name: 'San Francisco')
# Skill.find_or_create_by(name: 'Skill 1')
# Skill.find_or_create_by(name: 'Skill 2')
# Skill.find_or_create_by(name: 'Skill 3')
# Skill.find_or_create_by(name: 'Skill 4')
# Skill.find_or_create_by(name: 'Skill 5')
# Department.find_or_create_by(name: 'Department 1')
# Department.find_or_create_by(name: 'Department 2')
# Department.find_or_create_by(name: 'Department 3')
# Department.find_or_create_by(name: 'Department 4')
# Department.find_or_create_by(name: 'Department 5')
nurse = Nurse.create(name: 'Amit Pandey', age: 32, profile_link: 'http://amit.com', city_id: city.id)
nurse.skills << Skill.find_or_create_by(name: 'Childcare')
nurse.skills << Skill.find_or_create_by(name: 'Assistant')
nurse.skills << Skill.find_or_create_by(name: 'Home Nursing')
nurse.skills << Skill.find_or_create_by(name: 'Supervisor')
nurse.skills << Skill.find_or_create_by(name: 'Eldercare')
nurse.departments << Department.find_or_create_by(name: 'Ortho')
nurse.departments << Department.find_or_create_by(name: 'Anaesthetics')
nurse.departments << Department.find_or_create_by(name: 'Cardiology')
nurse.departments << Department.find_or_create_by(name: 'Diagnostic')
nurse.departments << Department.find_or_create_by(name: 'ICU')


nurse = Nurse.create(name: 'Amit Kumar', age: 22, profile_link: 'http://kumar.com', city_id: city.id)
nurse.skills << Skill.find_or_create_by(name: 'Assistant')
nurse.skills << Skill.find_or_create_by(name: 'Home Nursing')
nurse.skills << Skill.find_or_create_by(name: 'Supervisor')
nurse.skills << Skill.find_or_create_by(name: 'Eldercare')
nurse.departments << Department.find_or_create_by(name: 'Ortho')
nurse.departments << Department.find_or_create_by(name: 'Anaesthetics')
nurse.departments << Department.find_or_create_by(name: 'Cardiology')
nurse.departments << Department.find_or_create_by(name: 'Diagnostic')
nurse.departments << Department.find_or_create_by(name: 'ICU')


nurse = Nurse.create(name: 'Elizabeth', age: 28, profile_link: 'http://elizabeth.com', city_id: city.id)
nurse.skills << Skill.find_or_create_by(name: 'Assistant')
nurse.departments << Department.find_or_create_by(name: 'Cardiology')

nurse = Nurse.create(name: 'Elliot', age: 28, profile_link: 'http://elliot.com', city_id: city.id)
nurse.skills << Skill.find_or_create_by(name: 'Eldercare')
nurse.departments << Department.find_or_create_by(name: 'Diagnostic')

nurse = Nurse.create(name: 'Jessica', age: 25, profile_link: 'http://jessica.com', city_id: city.id)
nurse.skills << Skill.find_or_create_by(name: 'Childcare')
nurse.departments << Department.find_or_create_by(name: 'Ortho')