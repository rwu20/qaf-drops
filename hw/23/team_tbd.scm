;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw23improved) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define gradeConvCascade
  (lambda (g) 
    (if (>= g 90) 
        "A" 
        (if (>= g 80)
            "B"
            (if (>= g 70)
                "C"
                (if (>= g 65)
                    "D" 
                    "F")))))) 

(define gradeConvBlock
  (lambda (g)
    (cond
      ((>= g 90) "A")
      ((>= g 80) "B")
      ((>= g 70) "C")
      ((>= g 65) "D")
      (else "F"))))

(gradeConvCascade 172)
"should be A"
(gradeConvCascade 23)
"should be F"
(gradeConvCascade -7)
"should be F"
(gradeConvCascade 79.4)
"should be C"
(gradeConvCascade 79.5)
"should be C"

(gradeConvBlock 172)
"should be A"
(gradeConvBlock 23)
"should be F"
(gradeConvBlock -7)
"should be F"
(gradeConvBlock 79.4)
"should be C"
(gradeConvBlock 79.5)
"should be C"
