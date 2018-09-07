# Test the test
>>> bin/doctest-cli --verbose test/example.sh

doctest-cli: test/example.sh
------------------------------------------------------------
Test passed:
  echo hello
With STDERR:
 
With STDOUT:
 hello
With RETURN:
 0
------------------------------------------------------------
Error while running:
  echo hello
With STDERR:
  
Expected STDOUT:
  bye
Got:
  hello
------------------------------------------------------------
Test passed:
  false
With STDERR:
 
With STDOUT:
 
With RETURN:
 1
------------------------------------------------------------
Test passed:
  true
With STDERR:
 
With STDOUT:
 
With RETURN:
 0
------------------------------------------------------------
Test passed:
  printf "hello\nworld"
With STDERR:
 
With STDOUT:
 hello
 world
With RETURN:
 0
------------------------------------------------------------
Test passed:
  echo 'hello' | wc -c
With STDERR:
 
With STDOUT:
 6
With RETURN:
 0
------------------------------------------------------------
Test passed:
  echo 'hello' > tmp.txt && wc -l tmp.txt && rm tmp.txt
With STDERR:
 
With STDOUT:
 1 tmp.txt
With RETURN:
 0
------------------------------------------------------------
Error while running:
  take 3
With STDERR:
  /bin/sh: take: command not found
Expected RETURN: 0
Got: 127
------------------------------------------------------------
Test passed:
  echo hello > /dev/stderr
With STDERR:
 hello
With STDOUT:
 
With RETURN:
 0
------------------------------------------------------------
Tests ran: 9
Tests passed: 7
Tests failed: 2
