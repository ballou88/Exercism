(ns leap)


(defn leap-year?
  [year]
  ;; <- argslist goes here
  (and
    (zero? (mod year 4))
    (or
      (not= 0 (mod year 100))
      (zero? (mod year 400)))))
