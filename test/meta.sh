# Test the test
>>> ./doctest-cli test/example.sh

doctest-cli: test/example.sh
------------------------------------------------------------
Error while running:
  echo hello
With STDERR:

Expected STDOUT:
  bye
Got:
  hello
------------------------------------------------------------
Error while running:
  take 3
With STDERR:
  /bin/sh: take: command not found
Expected RETURN: 0
Got: 127
------------------------------------------------------------
Tests ran: 9
Tests passed: 7
Tests failed: 2
$?=0
