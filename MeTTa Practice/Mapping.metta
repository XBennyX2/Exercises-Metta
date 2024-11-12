(=(map $f ()) ()) ; defining for the base case if the function got an nil its return nil
(= (map $f (:: $h $t)) ; defining the map function if it gets a list
(($f $h) (map $f $t)); apply the function to the head of the list and call the map recursivley and applying the function to the tail
)
(=(Cube $x) (* $x (* $x $x))) ; this function takes an input and cubes it, 

!(map Cube (:: 1 (:: 3 (:: 6 ())))) ; ooutput = (:: 1 (:: 9 ( :: 216 ())

