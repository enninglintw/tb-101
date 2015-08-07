# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "這個種子檔會自動建立 3 個帳號, 每個帳號創建 5 個 groups, 每個 group 各 10 個 posts"

create_users_groups_and_posts =
for u in 1..3 do
  User.create!([
    email: "example#{u}@gmail.com",
    password: '12345678',
    password_confirmation: '12345678',
    name: "測試用帳號#{u}"])
  for g in 1..5 do
    Group.create!([
      title: "Group No. #{(u-1)*5+g}",
      description: "這是 user #{u} 建立的第 #{g} 個討論版",
      user_id: "#{u}"])
    for p in 1..10 do
      Post.create!([
        content: "這是 user #{u} 建立在第 #{g} 個討論版的第 #{p} 個留言",
        group_id: "#{g}",
        user_id: "#{u}"])
    end
  end
end
