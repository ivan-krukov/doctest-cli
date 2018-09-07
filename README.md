[![Build Status](https://travis-ci.org/ivan-krukov/doctest-cli.svg?branch=master)](https://travis-ci.org/ivan-krukov/doctest-cli)

# doctest-cli

Doctests for your shell.
Run an executable, check the output.

## Installation

With `pip`:

```bash
pip install doctest-cli
```

By hand:
```bash
curl -O https://github.com/ivan-krukov/doctest-cli/blob/master/bin/doctest-cli ~/bin
chmod +x ~/bin/doctest-cli
```

## Usage

Create a test script, say `test.sh`:

```sh
# Command
>>> echo hello
# Expected output
hello

# Another command
>>> echo 'Good bye!'
Good bye!

# Failing
>>> echo banana
apple
```

Test it:

```bash
doctest-cli test.sh
```

Check output:
```
doctest-cli: test/simple.sh
------------------------------------------------------------
Error while running:
  echo banana
With STDERR:
  
Expected STDOUT:
  apple
Got:
  banana
------------------------------------------------------------
Tests ran: 3
Tests passed: 2
Tests failed: 1
```

## Dependencies

The program depends on `python` - both `2.7` and `3.4` and above should work

## Extra 

See `test/` for more examples.

### Return code

Check return code by adding `$?=<RET>` to the beginning of the line. Default return code is `0`:

```sh
>>> false
$?=1
>>> true
$?=0
```

### Standard error

Check `stderr` output by adding `!` to the beginning of the line:

```sh
>>> echo error > /dev/stderr
! error
```

By default, the `stderr` stream is assumed to be empty.

### Custom shell

You can use a custom shell with a shebang line:

```fish
#!/usr/local/bin/fish
>>> echo hello; and echo this is fish
hello
this is fish
```

## Details

`doctest-cli` uses `python`'s `subprocess` module to spawn a new shell for each command and checks the output against the lines provided. All the environment variables are inherited from the parent session. 

Whitespace (including intervening newlines) is ignored. For example, the following test should pass, since all the newlines in the middle are removed:

```sh
>>>printf 'hello\n\n\n\n\n\nworld'
hello
world
```

This is done so that you can have an arbitrary amount of whitespace delineating the test blocks.
