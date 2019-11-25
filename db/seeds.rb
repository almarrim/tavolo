# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "nawal@sleep.com", name:"nouf", role:"owner")
Restaurant.create(name:"McDonalds",img:"https://rinnoo.net/f/CMS/Articles/2018/9/19/6595_856585-1_-_Qu80_RT1600x1024-_OS683x419-_RD683x419-.jpg" ,user_id:2)