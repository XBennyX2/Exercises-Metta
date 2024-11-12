;. Write the “member check” program in Prolog. What happens when an
;item is not in the list? Query to the “member” specification to break a list
;into its component elements.


; specfiying that is accepts an argument x and a list x and returns Boolen
(: is_member (-> $x (List $x) Bool))


; if empty return false
(=(is_member $y ()) False)

if y is in the member of the first list it  returns true else it recursivly calls is_member function to the tail of list
(=(is_member $y (:: $h $x))
(if (== $y $h) True (is_member $y $x)))

!(is_member 1 (:: 2(:: 3 ())))
