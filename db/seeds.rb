Rake::Task['db:reset'].invoke
5.times do |n|
  User.create!(name: "First Last #{n}",
  email: "example#{n}@user.com",
  password: "secret00",
  password_confirmation: "secret00")
end

User.all.each do |user|
  10.times do
    user.events.create!(name: "fake user event",
    location: "fake location",
    type: "sports type")
  end
end

Event.all.limit(2) do |event|
  5.times do
    # event.users.add
  end
end
