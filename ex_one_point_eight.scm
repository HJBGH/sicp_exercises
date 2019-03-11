(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2.0 guess)) 3.0))

(define (good-enough? guess x)
  (< (abs(- guess (improve guess x))) (/ guess 1000000)))

(define (hbcbrt x)
  (cbrt-iter 1.0 x))
