(explore-derivatives (re.union (re.++ (re.range "4" "4") ((_ re.loop 12 12) (re.range "0" "9")))(re.union (re.++ (re.union (re.++ (re.range "3" "4") ((_ re.loop 3 3) (re.range "0" "9")))(re.union (re.++ (re.range "5" "5")(re.++ (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re (seq.++ "6" (seq.++ "0" (seq.++ "1" (seq.++ "1" "")))))))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " "))) ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))))))(re.union (re.++ (re.++ (re.range "3" "3")(re.++ (re.union (re.range "," ",")(re.union (re.range "4" "4") (re.range "7" "7"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 6 6) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " "))) ((_ re.loop 5 5) (re.range "0" "9"))))))(re.union (re.++ (re.++ (re.range "3" "3")(re.++ (re.union (re.range "," ",")(re.union (re.range "4" "4") (re.range "7" "7"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " "))) ((_ re.loop 3 3) (re.range "0" "9"))))))))(re.union (re.++ (re.++ (re.range "3" "3")(re.++ (re.union (re.range "," ",")(re.union (re.range "4" "4") (re.range "7" "7"))) (re.range "0" "9")))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " "))) ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))))))(re.union (re.++ (re.union (re.++ (str.to_re (seq.++ "3" (seq.++ "0" "")))(re.++ (re.range "0" "5") (re.range "0" "9"))) (re.++ (re.union (str.to_re (seq.++ "3" (seq.++ "6" ""))) (str.to_re (seq.++ "3" (seq.++ "8" ""))))(re.++ (re.range "0" "9") (re.range "2" "2")))) (re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " "))) ((_ re.loop 2 2) (re.range "0" "9")))))))) (re.++ (re.union (re.union (str.to_re (seq.++ "2" (seq.++ "1" (seq.++ "3" (seq.++ "1" ""))))) (str.to_re (seq.++ "1" (seq.++ "8" (seq.++ "0" (seq.++ "0" "")))))) (re.union (str.to_re (seq.++ "2" (seq.++ "0" (seq.++ "1" (seq.++ "4" ""))))) (str.to_re (seq.++ "2" (seq.++ "1" (seq.++ "4" (seq.++ "9" ""))))))) (re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " ")))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.union (re.opt (re.range "-" "-")) (re.opt (re.range " " " "))) ((_ re.loop 3 3) (re.range "0" "9")))))))))))))))