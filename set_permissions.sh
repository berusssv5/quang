#!/usr/bin/expect -f
set code_dir "/code"
set password "huyduc123"
spawn sudo chmod 777 $code_dir/*
expect "Password:"
send "$password\r"
expect eof
