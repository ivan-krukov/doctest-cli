# this should pass
>>> echo error > /dev/stderr
! error

# this should fail
>>> echo error > /dev/stderr
expect this in stdout
