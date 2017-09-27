100.times do

  first_name = Faker::Name.first_name
  last_name =Faker::Name.last_name
  Employee.create(
    first_name: first_name,
    last_name: last_name,
    email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
    ssn: Faker::Medical::SSN.ssn,
    birthdate: Faker::Date.birthday(18, 65)
  )   

end

200.times do
  Address.create(
    street: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    employee_id: rand(1..100)
  )
end