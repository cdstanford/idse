(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ (re.union (re.++ (re.range "H" "H") (re.union (re.range "P" "P")(re.union (re.range "T" "U") (re.range "Y" "Z"))))(re.union (re.++ (re.range "N" "N") (re.union (re.range "A" "D")(re.union (re.range "F" "H")(re.union (re.range "J" "O")(re.union (re.range "R" "U") (re.range "W" "Z"))))))(re.union (str.to_re (seq.++ "O" (seq.++ "V" "")))(re.union (re.++ (re.range "S" "S") (re.union (re.range "C" "E")(re.union (re.range "G" "H")(re.union (re.range "J" "K")(re.union (re.range "M" "P")(re.union (re.range "R" "U") (re.range "W" "Z"))))))) (re.++ (re.range "T" "T") (re.union (re.range "A" "A")(re.union (re.range "F" "G")(re.union (re.range "L" "M")(re.union (re.range "Q" "R") (re.range "V" "V"))))))))))(re.++ ((_ re.loop 4 4) (re.range "0" "9"))(re.++ (re.opt (re.union (str.to_re (seq.++ "N" (seq.++ "E" "")))(re.union (str.to_re (seq.++ "N" (seq.++ "W" "")))(re.union (str.to_re (seq.++ "S" (seq.++ "E" ""))) (str.to_re (seq.++ "S" (seq.++ "W" ""))))))) (str.to_re ""))))) (re.++ (re.++ (re.union (re.++ (re.range "H" "H") (re.union (re.range "P" "P")(re.union (re.range "T" "U") (re.range "Y" "Z"))))(re.union (re.++ (re.range "N" "N") (re.union (re.range "A" "D")(re.union (re.range "F" "H")(re.union (re.range "J" "O")(re.union (re.range "R" "U") (re.range "W" "Z"))))))(re.union (str.to_re (seq.++ "O" (seq.++ "V" "")))(re.union (re.++ (re.range "S" "S") (re.union (re.range "C" "E")(re.union (re.range "G" "H")(re.union (re.range "J" "K")(re.union (re.range "M" "P")(re.union (re.range "R" "U") (re.range "W" "Z"))))))) (re.++ (re.range "T" "T") (re.union (re.range "A" "A")(re.union (re.range "F" "G")(re.union (re.range "L" "M")(re.union (re.range "Q" "R") (re.range "V" "V")))))))))) (re.union ((_ re.loop 4 4) (re.range "0" "9"))(re.union ((_ re.loop 6 6) (re.range "0" "9"))(re.union ((_ re.loop 8 8) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9")))))) (str.to_re ""))))