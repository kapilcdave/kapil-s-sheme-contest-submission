;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Gyro's Garden
;;;
;;; Description:
;;;   Seeds arranged by phi,
;;;   golden angle spirals bloom,
;;;   nature's algorithm.

(define phi (/ (+ 1 (sqrt 5)) 2))
(define ga 2.39996322)

(define (phyllotaxis n total)
  (if (<= n total)
      (let ((r (* 18 (sqrt n)))
            (angle (* n ga))
            (t (/ n total)))
        (pu)
        (goto (* r (cos angle)) (* r (sin angle)))
        (pd)
        (color (rgb (* t t)
                    (* 0.4 (+ 0.5 (* 0.5 (sin (* t 6.2832)))))
                    (* (- 1 t) (- 1 t))))
        (begin_fill)
        (circle (+ 3 (* 8 (sqrt t))))
        (end_fill)
        (phyllotaxis (+ n 1) total))))

(define (draw)
  (ht)
  (bgcolor "black")
  (speed 0)
  (phyllotaxis 1 500)
  (exitonclick))

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)