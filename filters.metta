 ; takes a function from type t to bool and a list then return a list
(: filters (-> (-> $t Bool) (List $t) (List $t)))
 ;basecase
(= (filters $f ()) ())
 ; now we define the recursive case
(= (filters $f (:: $h $t))
    (if ($f $h)
        (:: $h (filters $f $t))
        (filters $f $t)))

(: gt0 (-> Number Bool))
(= (gt0 ()) ())
(= (gt0 $x ) (> $x 0))

(gt0 -2)
! (filters gt0 (:: 1 (:: -2 (:: 3 ()))))
