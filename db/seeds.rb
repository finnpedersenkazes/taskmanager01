# https://github.com/stympy/faker/tree/master/doc

Task.destroy_all

puts 'Creating 20 fake tasks ...'
20.times do
  planned_date = Faker::Date.between(Date.today, 2.days.from_now)
  task = Task.new(
    short_description: Faker::HarryPotter.character,
    long_description: Faker::Hacker.say_something_smart,
    nature: Faker::Hacker.adjective + ' ' + Faker::Hacker.noun + ' ' + Faker::Hacker.ingverb,
    urgency: ["I will be in trouble","Normal","It can wait","Delegate it to someone else","ASAP"].sample,
    duration: ["15","30","45","60","90","120"].sample,
    attention_date: Faker::Date.between(Date.today, 2.days.from_now),
    deadline: Faker::Date.between(2.days.from_now, 10.days.from_now),
    expiration_date: Faker::Date.between(10.days.from_now, 20.days.from_now),
    removed_date: Faker::Date.between(20.days.from_now, 30.days.from_now),
    planned_date: planned_date,
    starting_time: Time.new(planned_date.year, planned_date.month, planned_date.day, (8..22).to_a.sample, [0,15,30,45].sample, 0),
    status: [:unplanned,:planned,:done,:deleted].sample
  )
  task.save!
end
puts 'Finished!'
