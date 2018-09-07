# Empty output
>>> true
# Newline output
>>> echo ""
# intervening whitespace is ignored
>>> echo "hello\n\nworld"
hello
world
# same, because parser ignores whitespace
>>> echo "hello\n\n\n\n\n\n\n\n\nworld"
hello

world
