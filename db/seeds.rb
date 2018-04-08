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
