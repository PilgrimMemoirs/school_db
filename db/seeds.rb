# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    grade_level: rand(1..12)
    )
end


10.times do
  Teacher.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: ("#{Faker::Hacker.adjective}_#{Faker::Team.creature}")
    )
end

10.times do
  Course.create(name: Faker::Superhero.power, teacher_id: rand(1..10))
end


10.times do
  Assignment.create(name: "test", course_id: rand(1..10), due_date: DateTime.new(2001,2,3))
end

30.times do
  Mark.create(assignment_id: rand(1..10), student_id: rand(1..20), mark: rand(1..100))
end
