(explore-derivatives (re.union (re.++ (str.to_re "")(re.++ ((_ re.loop 1 6) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ (re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z"))(re.++ (re.range " " " ")(re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")))))) (str.to_re "")))))(re.union (re.++ (str.to_re "")(re.++ ((_ re.loop 1 6) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ (re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z"))(re.++ (re.range " " " ")(re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z"))(re.++ (re.range " " " ")(re.++ (re.range "A" "Z") (re.+ (re.range "a" "z"))))))))) (str.to_re ""))))) (re.++ (str.to_re "")(re.++ ((_ re.loop 1 6) (re.range "0" "9"))(re.++ (re.range " " " ")(re.++ (re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z"))(re.++ (re.range " " " ")(re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z"))(re.++ (re.range " " " ")(re.++ (re.range "A" "Z")(re.++ (re.+ (re.range "a" "z"))(re.++ (re.range " " " ")(re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")))))))))))) (str.to_re ""))))))))