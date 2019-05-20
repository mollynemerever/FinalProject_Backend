# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(full_name: 'David Lee', first_name: 'David', email: 'davidlee@gmail.com', image: '', join_year: '2019', industry: 'Healthcare')
User.create(full_name: 'Sam Lee', first_name: 'Sam', email: 'samlee@gmail.com', image: '', join_year: '2019', industry: 'Higher Education')
User.create(full_name: 'Hannah Lee', first_name: 'Hannah', email: 'hannahlee@gmail.com', image: '', join_year: '2019', industry: 'Human Resources')
User.create(full_name: 'Josh Lee', first_name: 'Josh', email: 'joshlee@gmail.com', image: '', join_year: '2019', industry: 'Technology, Software, and Computer Services')
