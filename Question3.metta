;. Design a Prolog program unique(Bag, Set) that takes a bag (a list
;that may contain duplicate elements) and returns a set (no elements are
;repeated)    
; this is the member checker function
(: isMember (-> $t (List $t) Bool))
(= (isMember $x ()) False)  
(= (isMember $x (:: $h $t)) 
    (or (== $x $h) (isMember $x $t))
)
; defining uniqu function that it accepts a list and outputs a list
(: uniqu (-> (List $t) (List $t)))

(= (uniqu ()) ())  
(= (uniqu (:: $h $t))
; if head is already in the unique list skip it
   (if (isMember $h (uniqu $t))
   ; recursivly calling the function and skipping head
       (uniqu $t)            
       ; else add h to the unique list
       (:: $h (uniqu $t))
))

! (uniqu (:: 1 (:: 2 (:: 1 (:: 3 ())))))



