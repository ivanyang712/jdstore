# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u = User.new
u.email = "admin@test.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = true
u.save

u = User.new
u.email = "1@1.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = false
u.save

# Initialize Product


# title = [
#     "Sweet Dream",
#     "Hope Love",
#     "Cute Lollippo",
#     "Box Love",
#     "Belgium Choco",
#     "DIY Choco",
#   ]
#
#   images = [
#     "https://ww1.sinaimg.cn/large/006tKfTcgy1ffyuyxe6doj31hc1407fk.jpg",
#     "https://ww1.sinaimg.cn/large/006tKfTcgy1ffyuyxe6doj31hc1407fk.jpg",
#     "https://ww3.sinaimg.cn/large/006tNc79gy1fg28dwtnkxj31hc0zkdst.jpg",
#     "https://ww2.sinaimg.cn/large/006tNc79gy1fg28f3bvfij30zk0npag4.jpg",
#     "https://ww4.sinaimg.cn/large/006tNc79gy1fg28gba013j31hc0rc476.jpg",
#     "https://ww2.sinaimg.cn/large/006tNc79gy1fg28h317utj30b408cwep.jpg",
#   ]
#   for i in 0..6 do
#        Product.create!(
#        title: title[i],
#        description:"Hope Sweety",
#        quantity:rand(6..10),
#        category_id: rand(1..6),
#        price:rand(50..100)*10,
#        )
#      end
#
#    for i in 0..6 do
#   Photo.create!(product_id: (i+1) ,avatar:open(images[i]))
#  end
