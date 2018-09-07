# Empty output
>>> true
# Newline output
>>> echo ""
# intervening whitespace is ignored
>>> printf "hello\n\nworld"
hello
world
# same, because parser ignores whitespace
>>> printf "hello\n\n\n\n\n\n\n\n\nworld"
hello

world
