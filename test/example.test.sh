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
>>> printf "hello\nworld"
hello
world

# Test piping
>>> echo 'hello' | wc -c
6

# Test file piping
>>> echo 'hello' > tmp.txt && wc -l tmp.txt && rm tmp.txt
1 tmp.txt

# Unkown command returns 217
# We dump STDERR to /dev/null
# The exact error message if different for different systems
>>> take 3 2> /dev/null
$?=127

# Test stderr
>>> echo hello > /dev/stderr
! hello
