(explore-derivatives (re.++ (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.* (re.union (re.range "+" "+")(re.union (re.range "-" ".")(re.union (re.range "0" "9")(re.union (re.range "A" "Z") (re.range "a" "z")))))))(re.++ (re.range ":" ":")(re.++ (re.opt (re.union (re.++ (str.to_re (seq.++ "/" (seq.++ "/" "")))(re.++ (re.opt (re.++ (re.+ (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" "9")(re.union (re.range ";" ";")(re.union (re.range "=" "=")(re.union (re.range "A" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~")))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))))))(re.++ (re.opt (re.range ":" ":"))(re.++ (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" "9")(re.union (re.range ";" ";")(re.union (re.range "=" "=")(re.union (re.range "A" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~")))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f"))))))) (re.range "@" "@")))))(re.++ (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" "9")(re.union (re.range ";" ";")(re.union (re.range "=" "=")(re.union (re.range "A" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~")))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))))))(re.++ (re.opt (re.++ (re.range ":" ":") (re.* (re.range "0" "9")))) (re.* (re.++ (re.range "/" "/") (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" ";")(re.union (re.range "=" "=")(re.union (re.range "@" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~"))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))))))))))))(re.union (re.++ (re.range "/" "/") (re.opt (re.++ (re.+ (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" ";")(re.union (re.range "=" "=")(re.union (re.range "@" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~"))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f"))))))) (re.* (re.++ (re.range "/" "/") (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" ";")(re.union (re.range "=" "=")(re.union (re.range "@" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~"))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))))))))))) (re.++ (re.+ (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" ";")(re.union (re.range "=" "=")(re.union (re.range "@" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~"))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f"))))))) (re.* (re.++ (re.range "/" "/") (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ".")(re.union (re.range "0" ";")(re.union (re.range "=" "=")(re.union (re.range "@" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~"))))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f")))))))))))))(re.++ (re.opt (re.++ (re.range "?" "?") (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ";")(re.union (re.range "=" "=")(re.union (re.range "?" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~")))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f"))))))))) (re.opt (re.++ (re.range "#" "#") (re.* (re.union (re.union (re.range "!" "!")(re.union (re.range "$" "$")(re.union (re.range "&" ";")(re.union (re.range "=" "=")(re.union (re.range "?" "Z")(re.union (re.range "_" "_")(re.union (re.range "a" "z") (re.range "~" "~")))))))) (re.++ (re.range "%" "%") ((_ re.loop 2 2) (re.union (re.range "0" "9")(re.union (re.range "A" "F") (re.range "a" "f"))))))))))))))