email = "test@example.com"
password = "password"
User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "The user's initial data import was successful."
end
