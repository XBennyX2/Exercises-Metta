(: findMin (-> (List Number) Number))
(: helper (->  (List Number) Number Number))
(= (findMin (:: $h $t)) (helper $t $h))
(= (findMin ()) ())

(= (helper () $min) $min)
(= ( helper (:: $h $t) $min)
    (if (< $h $min) (helper $t $h) (helper $t $min)))
