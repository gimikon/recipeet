User.destroy_all
u1 = User.create :email => 'yukiko@gmail.com', :name => 'Yukiko Isogimi', :password => 'chicken'
u2 = User.create :email => 'yukiko@outlook.com', :name => 'Akiko Tominaga', :password => 'chicken'
u3 = User.create :email => 'yukikosan@gmail.com', :name => 'Azusa Ito', :password => 'chicken'
puts "#{User.count} users created"

Post.destroy_all

p1 = Post.create :title => 'Curry', :content => "I made japanese curry tonight", :image => "https://img-global.cpcdn.com/recipes/565cd0f552e847e9/1280x1280sq70/photo.jpg"

p2 = Post.create :title => "Indian Food", :content => "I am going to make cookies today", :image => "https://img.cpcdn.com/recipes/3671804/m/24c70ae45315664383519939874fd4fd.jpg?u=9916351&p=1454829767"

p3 = Post.create :title => "Tomato Past", :content => "I made Special tomato pasta today, please check it out", :image => "https://img-global.cpcdn.com/recipes/416c32f67bb6e167/1280x1280sq70/photo.jpg"

puts "#{ Post.count } posts created"

# users and posts
u1.posts << p1 << p2
u2.posts << p2
u3.posts << p3

u1.follow(u2)
u1.follow(u3)
u2.follow(u1)
