#!/usr/bin/expect -f

# Thiết lập các biến
set code_dir "/code"
set password "Mypassword@12345"

# Thiết lập mật khẩu expect
spawn sudo chmod 777 $code_dir/*

# Chờ cho sudo yêu cầu mật khẩu
expect "Password:"

# Gửi mật khẩu
send "$password\r"

# Chờ cho quá trình hoàn thành
expect eof
