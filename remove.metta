(: remove (-> $t (List $t) (List $t)))
; Base case
(= (remove $x ()) ())
; recursive case
(= (remove $x (:: $h $t))
    (if (== $x $h)
        (remove $x $t)
        (:: $h (remove $x $t))))
