;Create a relational database in Prolog. Represent the data tuples as facts
;and the constraints on the data tuples as rules.
; we can represent these as the data tuples

(Mentor Nahom Benny)
(Mentor Leah Kal)
(Mentor Betty Aron)


;Question two
; constraints as rules
(=(isMember ()) False)
(=(isMember $x) (match &self (Mentor $y $x) or (Mentor $x $y) True False))


(=(get-Mentor $intern) (match &self (Mentor $mentor $intern) $mentor))



