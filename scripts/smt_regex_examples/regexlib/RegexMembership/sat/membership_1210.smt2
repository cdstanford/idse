(explore-derivatives (re.++ (str.to_re "")(re.++ (re.opt (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z")(re.union (re.range "a" "z") (re.range "|" "|"))))(re.++ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))(re.++ ((_ re.loop 2 2) (re.range "0" "9"))(re.++ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))(re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z")(re.union (re.range "a" "z") (re.range "|" "|"))))(re.++ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))) ((_ re.loop 1 4) (re.range "0" "9")))))))))(re.++ (re.opt (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z")(re.union (re.range "a" "z") (re.range "|" "|"))))(re.++ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))) ((_ re.loop 1 4) (re.range "0" "9"))))) (str.to_re "")))))