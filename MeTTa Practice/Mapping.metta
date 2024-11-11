(=(map $f ()) ())
(= (map $f (:: $h $t))
(($f $h) (map $f $t))
)
(=(Cube $x) (* $x (* $x $x)))

!(map Cube (:: 1 (:: 3 (:: 6 ()))))
