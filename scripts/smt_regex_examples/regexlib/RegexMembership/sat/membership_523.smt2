(explore-derivatives (re.++ (str.to_re "")(re.++ (re.* (re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff")))(re.++ (re.range "." ".") (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))))(re.++ (re.+ (re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z")) (re.* (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))))))(re.++ (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0"))))(re.++ (re.* (re.++ (re.range "A" "Z")(re.++ (re.opt (re.range "." ".")) (re.union (re.range "\x09" "\x0d")(re.union (re.range " " " ")(re.union (re.range "\x85" "\x85") (re.range "\xa0" "\xa0")))))))(re.++ (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "'" "'")(re.union (re.range "-" "-")(re.union (re.range "A" "Z") (re.range "a" "z"))))))(re.++ (re.* (re.union (re.range "\x00" "\x09") (re.range "\x0b" "\xff"))) (str.to_re "")))))))))