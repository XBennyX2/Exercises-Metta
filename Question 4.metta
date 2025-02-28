;. Write a Prolog program to count the elements in a list 

(: count_elements (->(List $t) Number))
; an empty list returns 0
(=(count_elements ())0)

(=(count_elements (:: $h $t))( + 1 (count_elements $t)))
