(explore-derivatives (re.++ (str.to_re "")(re.++ (re.++ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))(re.++ (re.union (str.to_re (seq.++ "S" (seq.++ "U" (seq.++ "N" ""))))(re.union (str.to_re (seq.++ "M" (seq.++ "O" (seq.++ "N" ""))))(re.union (str.to_re (seq.++ "T" (seq.++ "U" (seq.++ "E" ""))))(re.union (str.to_re (seq.++ "W" (seq.++ "E" (seq.++ "D" ""))))(re.union (str.to_re (seq.++ "T" (seq.++ "H" (seq.++ "U" ""))))(re.union (str.to_re (seq.++ "F" (seq.++ "R" (seq.++ "I" "")))) (str.to_re (seq.++ "S" (seq.++ "A" (seq.++ "T" ""))))))))))(re.++ (re.+ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ (re.union (str.to_re (seq.++ "J" (seq.++ "A" (seq.++ "N" ""))))(re.union (str.to_re (seq.++ "F" (seq.++ "E" (seq.++ "B" ""))))(re.union (str.to_re (seq.++ "M" (seq.++ "A" (seq.++ "R" ""))))(re.union (str.to_re (seq.++ "A" (seq.++ "P" (seq.++ "R" ""))))(re.union (str.to_re (seq.++ "M" (seq.++ "A" (seq.++ "Y" ""))))(re.union (str.to_re (seq.++ "J" (seq.++ "U" (seq.++ "N" ""))))(re.union (str.to_re (seq.++ "J" (seq.++ "U" (seq.++ "L" ""))))(re.union (str.to_re (seq.++ "A" (seq.++ "U" (seq.++ "G" ""))))(re.union (str.to_re (seq.++ "S" (seq.++ "E" (seq.++ "P" ""))))(re.union (str.to_re (seq.++ "O" (seq.++ "C" (seq.++ "T" ""))))(re.union (str.to_re (seq.++ "N" (seq.++ "O" (seq.++ "V" "")))) (str.to_re (seq.++ "D" (seq.++ "E" (seq.++ "C" "")))))))))))))))(re.++ (re.+ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ (re.union (re.++ (re.opt (re.range "0" "0")) (re.range "1" "9"))(re.union (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (re.range "3" "3") (re.range "0" "1"))))(re.++ (re.+ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ (re.union (re.++ (re.range "2" "2") (re.range "0" "3")) (re.++ (re.range "0" "1") (re.range "0" "9")))(re.++ (re.range ":" ":")(re.++ (re.++ (re.range "0" "5") (re.range "0" "9"))(re.++ (re.range ":" ":")(re.++ (re.union (str.to_re (seq.++ "6" (seq.++ "0" ""))) (re.++ (re.range "0" "5") (re.range "0" "9")))(re.++ (re.+ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))) (re.union (re.++ (str.to_re (seq.++ "1" (seq.++ "9" ""))) ((_ re.loop 2 2) (re.range "0" "9")))(re.union (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))))) (str.to_re ""))))