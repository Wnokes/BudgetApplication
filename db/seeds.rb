# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {
        email: 'test@test.com', 
        password: 'asdfasdf', 
        name: "First",
        surname: "User"
    }, 
    {
        email: 'test1@test.com', 
        password: 'asdfasdf', 
        name: "Second",
        surname: "User"
    }])
puts "created users #{users}"

for u in users
    debts = DebtAccount.create(
    [
        {
            account_name: "#{u.name + u.surname} First Account",
            principle: rand(5000..100000),
            interest_rate: rand(100..1000),
            minimum_payment: rand(500..10000),
            user_id: u.id
        },
        {
            account_name: "#{u.name + u.surname} Second Account",
            principle: rand(5000..100000),
            interest_rate: rand(100..1000),
            minimum_payment: rand(500..10000),
            user_id: u.id
        },
        {
            account_name: "#{u.name + u.surname} Third Account",
            principle: rand(5000..100000),
            interest_rate: rand(100..1000),
            minimum_payment: rand(500..10000),
            user_id: u.id
        },
        {
            account_name: "#{u.name + u.surname} Fourth Account",
            principle: rand(5000..100000),
            interest_rate: rand(100..1000),
            minimum_payment: rand(500..10000),
            user_id: u.id
        },
        {
            account_name: "#{u.name + u.surname} Fifth Account",
            principle: rand(5000..100000),
            interest_rate: rand(100..1000),
            minimum_payment: rand(500..10000),
            user_id: u.id
        }
    ])
    puts "Created Five Debts #{debts} for #{u}"
end