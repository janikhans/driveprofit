User.create(
  [
    {
      first_name: 'Janik',
      last_name: 'Knittle',
      email: 'janik.knittle@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      bio: Faker::Hipster.paragraph
    },
    {
      first_name: 'Brandon',
      last_name: 'Fast',
      email: 'branfast@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      bio: Faker::Hipster.paragraph
    }
  ]
)

15.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.first_name,
    email: Faker::Internet.unique.safe_email,
    password: 'password',
    password_confirmation: 'password'
  )
end

Brand.create(
  [
    { name: 'Kind', website: 'kindsnacks.com', email: 'kind@example.com', password: 'password', password_confirmation: 'password' },
    { name: 'BMW', website: 'bmw.com', email: 'bmw@example.com', password: 'password', password_confirmation: 'password' },
    { name: 'Tesla', website: 'tesla.com', email: 'tesla@example.com', password: 'password', password_confirmation: 'password' },
    { name: 'CocaCola', website: 'coca-colacompany.com', email: 'coke@example.com', password: 'password', password_confirmation: 'password' },
    { name: 'Nestle', website: 'nestle.com', email: 'nestle@example.com', password: 'password', password_confirmation: 'password' },
    { name: 'Farmers', website: 'farmers.com', email: 'farms@example.com', password: 'password', password_confirmation: 'password' }
  ]
)

Brand.all.each do |brand|
  rand(1..3).times do
    brand.campaigns.create(
      name: Faker::Name.first_name,
      price: rand(0.10..0.20),
      description: Faker::Hipster.paragraph
    )
  end
end

User.all.each_with_index do |user, index|
  number = index == 0 ? 5 : rand(1..6)
  number.times do
    user.contracts.create(
      campaign: Campaign.all.sample
    )
  end

  avg_ride_count = rand(5..30)
  one_month_ago = Date.current - 1.month

  (one_month_ago..Date.current).each do |d|
    user.daily_reports.create(
      ride_count: avg_ride_count * rand(0.50..1.50),
      date: d
    )
  end

end
