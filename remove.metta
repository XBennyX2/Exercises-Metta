(: remove (->  (List $t) $t (List $t)))
(= (remove () $x) ())
(= (remove (List $x) ()) (List $x))

(= (remove (:: $h $t) $x)
    (if (== $h $x) $t (:: $h (remove $t $x)))
)

! (remove (:: "Genna" (:: "Kal" ())) "Kal" )