# This is a comment

# Test success
>>> echo hello
hello

# Test fail - this fails
>>> echo hello
bye

# Test return status
>>> false
$?=1

# Test no output
>>> true

# Test multiline
>>> echo "hello\nworld"
hello
world

# Test piping
>>> echo 'hello' | wc -c
6

# Test file piping
>>> echo 'hello' > tmp.txt && wc -l tmp.txt && rm tmp.txt
1 tmp.txt

# Test fail unknown - this fails
>>> take 3
3

# Test stderr
>>> echo hello > /dev/stderr
! hello
