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

Product.create!(title: "QC-35",
  description: "苹果电脑",
  price: 12800,
  quantity: 5,
  image: open("http://img13.360buyimg.com/n7/jfs/t2590/338/4222589387/237425/25e40fb/57b12ac6N61374a75.jpg")
  )

Product.create!(title: "Thinkpad",
  description: "联想Thinkpad笔记本",
  price: 8000,
  quantity: 5,
  image: open("http://img11.360buyimg.com/n1/s450x450_jfs/t4804/97/1759098535/205293/61ec47d0/58f428f6N5b35ea21.jpg")
  )

 Product.create!(title: "Dell-laptop",
  description: "戴尔笔记本",
  price: 5800,
  quantity: 5,
  image: open("http://img11.360buyimg.com/n1/s450x450_jfs/t4489/160/4705037261/141965/d7bc7aa9/5913f8ffN49fa143c.jpg")
  )

 # Product.create!(title: "QC-35",
 #   description: "耳机",
 #   price: 2800,
 #   quantity: 5,
 #   image: open("https://images-cn.ssl-images-amazon.com/images/I/41bVSMLUllL._AC_UL320_SR320,320_.jpg")
 #   )
 #
 # Product.create!(title: "Iphone7",
 #   description: "手机",
 #   price: 5000,
 #   quantity: 5,
 #   image: open("https://images-cn.ssl-images-amazon.com/images/I/51q3gdJGenL._SL800_.jpg")
 #   )
 #
 #  Product.create!(title: "Cherry Keyboard",
 #   description: "G80-3000键盘",
 #   price: 2800,
 #   quantity: 5,
 #   image: open("https://images-cn.ssl-images-amazon.com/images/I/41LN-bXtA7L._AC_UL320_SR320,320_.jpg")
 #   )
