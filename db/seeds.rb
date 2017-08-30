10.times do
  user = User.create(
    email: FFaker::Internet.email,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    password: 'password'
  )

  10.times do
    user.comments << Comment.new(
      text: FFaker::Lorem.sentence(5),
      created_at: FFaker::Time.between(1.years.ago, DateTime.now)
    )
  end
end