(explore-derivatives (re.++ (re.opt (re.++ (re.union (re.range "1" "3") ((_ re.loop 1 3) (re.range "I" "I"))) (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))))(re.++ (re.union (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))))(re.union (str.to_re (seq.++ "S" (seq.++ "o" (seq.++ "n" (seq.++ "g" (seq.++ " " (seq.++ "o" (seq.++ "f" (seq.++ " " (seq.++ "S" (seq.++ "o" (seq.++ "n" (seq.++ "g" (seq.++ "s" "")))))))))))))) (str.to_re (seq.++ "S" (seq.++ "o" (seq.++ "n" (seq.++ "g" (seq.++ " " (seq.++ "o" (seq.++ "f" (seq.++ " " (seq.++ "S" (seq.++ "o" (seq.++ "l" (seq.++ "o" (seq.++ "m" (seq.++ "o" (seq.++ "n" ""))))))))))))))))))(re.++ (re.opt (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ (re.opt (re.range "1" "1"))(re.++ (re.opt (re.range "0" "9"))(re.++ (re.range "0" "9")(re.++ (re.range ":" ":")(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ ((_ re.loop 1 3) (re.range "0" "9"))(re.++ (re.* (re.++ (re.range "," "-")(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))) ((_ re.loop 1 3) (re.range "0" "9"))))) (re.* (re.++ (re.range ";" ";")(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ (re.opt (re.++ (re.union (re.range "1" "3") ((_ re.loop 1 3) (re.range "I" "I"))) (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))))(re.++ (re.opt (re.union (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))))(re.union (str.to_re (seq.++ "S" (seq.++ "o" (seq.++ "n" (seq.++ "g" (seq.++ " " (seq.++ "o" (seq.++ "f" (seq.++ " " (seq.++ "S" (seq.++ "o" (seq.++ "n" (seq.++ "g" (seq.++ "s" "")))))))))))))) (str.to_re (seq.++ "S" (seq.++ "o" (seq.++ "n" (seq.++ "g" (seq.++ " " (seq.++ "o" (seq.++ "f" (seq.++ " " (seq.++ "S" (seq.++ "o" (seq.++ "l" (seq.++ "o" (seq.++ "m" (seq.++ "o" (seq.++ "n" "")))))))))))))))))))(re.++ (re.opt (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ (re.opt (re.range "1" "1"))(re.++ (re.opt (re.range "0" "9"))(re.++ (re.range "0" "9")(re.++ (re.range ":" ":")(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))(re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.range "," "-")(re.++ (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))) ((_ re.loop 1 3) (re.range "0" "9"))))))))))))))))))))))))))))))