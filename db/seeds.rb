# texts, movies テーブルを再生成(関連付くテーブルを含む)
%w[texts movies].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table_name} RESTART IDENTITY CASCADE")
end

require "csv"

CSV.foreach("db/csv_data/text_data.csv", headers: true) do |row|
  Text.create!(
    genre: row["genre"],
    title: row["title"],
    content: row["content"]
  )
  puts "The texts data import was successful."
end

CSV.foreach("db/csv_data/movie_data.csv", headers: true) do |row|
  Movie.create!(
    genre: row["genre"],
    title: row["title"],
    url: row["url"]
  )
  puts "The movies data import was successful."
end

email = "test@example.com"
password = "password"
User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "The user's initial data import was successful."
end
AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password") if Rails.env.development?
