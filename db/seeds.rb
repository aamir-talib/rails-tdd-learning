# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(
    [
        {email:'owner@domain.com'   , password: 'password'   , roles: %w(owner admin)         },
        {email:'admin@domain.com'   , password: 'password'   , roles: %w(admin)               },
        {email:'teacher@domain.com' , password: 'password'   , roles: %w(teacher student)     },
        {email:'student@domain.com' , password: 'password'   , roles: %w(student)             },
        {email:'banned@domain.com'  , password: 'password'   , roles: %w(banned)              }
    ]
)