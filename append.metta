(: append (-> (list $t) $t (list $t)))
(= (append () $x) (:: $x ()))
(= (append (:: $h $t) $x) (:: $h (append $t $x)))

! ( append (:: 1 (:: 2 ())) 5)
