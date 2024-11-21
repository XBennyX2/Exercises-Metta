(: remove (->  (List $t) $t (List $t)))
(= (remove () $x) ())
(= (remove (List $x) ()) (List $x))

(= (remove (:: $h $t) $x)
    (if (== $h $x) $t (:: $h (remove $t $x)))
)

! (remove (:: "Genna" (:: "Kal" ())) "Kal" )

(: findMin (-> (List Number) Number))
(: helper (->  (List Number) Number Number))
(= (findMin (:: $h $t)) (helper $t $h))
(= (findMin ()) ())

(= (helper () $min) $min)
(= ( helper (:: $h $t) $min)
    (if (< $h $min) (helper $t $h) (helper $t $min)))

(= (sort $f (:: $h $t) $A)
    (:: (findMin) )
)
 ;;(:: 1 (:: 2 ()))