puts "🌱 Seeding spices..."

# Seed your database here
# Seed your database here
User.destroy_all()
Event.destroy_all()
Message.destroy_all()

10.times do
    events=Event.create(
        reminder_time: Faker::Date.between(from: '2022-09-23', to: '2022-09-25'),
        task_or_meeting: Faker::Hobby.activity,
        phone_no: 254721969149
    )
end
10.times do
    messages=Message.create(
        
        message:"please eat your breakfast",
        message_type:"user",
        phone_no: 721969149,
        short_code: 222000
    )
end
10.times do
    users=User.create(
        name:Faker::Name.name ,
        phone_no:Faker::PhoneNumber.phone_number_with_country_code
    )
end

puts "✅ Done seeding!"
