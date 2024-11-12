;Create a relational database in Prolog. Represent the data tuples as facts
;and the constraints on the data tuples as rules.
; we can represent these as the data tuples

(Mentor Nahom Benny)    ; this is defining the tuples as facts
(Mentor Leah Kal)
(Mentor Betty Aron)




(=(isMember ()) False) 
(=(isMember $x) (match &self (Mentor $y $x) or (Mentor $x $y) True False))

; constraints as rules
(=(get-Mentor $intern) (match &self (Mentor $mentor $intern) $mentor))



