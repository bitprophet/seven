(ns six-clojure.core)

(defn r [] (use 'six-clojure.core :reload-all))

;
; Day 1
;

; Cheating?
(defn big [st n] (> (count st) n))

(defn collection-type [col]
  (def klass (class col))
  (cond
    (= klass clojure.lang.PersistentList) :list
    (= klass clojure.lang.PersistentVector) :vector
    (= klass clojure.lang.PersistentArrayMap) :map))

(defn palindrome? [x]
  (cond
    (empty? x) true
    (= 1 (count x)) true
    :else (and
            (= (first x) (last x))
            (palindrome? (rest (butlast x))))))
