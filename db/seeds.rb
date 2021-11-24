email = "test@example.com"
password = "password"
# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: email) do |user|
  user.password = password
  puts "\u30E6\u30FC\u30B6\u30FC\u306E\u521D\u671F\u30C7\u30FC\u30BF\u30A4\u30F3\u30DD\u30FC\u30C8\u306B\u6210\u529F\u3057\u307E\u3057\u305F\u3002"
end
