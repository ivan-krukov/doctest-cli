[![Build Status](https://travis-ci.org/ivan-krukov/doctest-cli.svg?branch=master)](https://travis-ci.org/ivan-krukov/doctest-cli)

# doctest-cli

Doctests for your shell.
Run an executable, check the output.

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
```

Test it:

```bash
./doctest-cli test.sh
```

```
doctest-cli: testing test/simple.sh
------------------------------------------------------------
All 2 tests passed
```

## Dependencies

* `python`

## Extra 

Check return code:

```sh
>>> false
$?=1
```

Check `stderr` output:

```sh
>>> echo error > /dev/stderr
! error
```

Custom shell:

```fish
#!/usr/local/bin/fish
>>> echo hello; and echo this is fish
hello
this is fish
```

## Details

`doctest-cli` uses `python`'s `Subprocess` module to spawn a new shell for each command and checks it against the provided output. All the environment variables are inherited from the current session. 

Whitespace (including intervening newlines) is ignored. For example, the following test should pass:

```sh
>>>printf 'hello\n\n\n\n\n\nworld'
hello
world
```
