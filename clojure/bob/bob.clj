(ns bob (:require [clojure.string :refer [upper-case blank?]]))


(defn is-yell?
	[string]
	(and (if (re-seq #"[A-Z]" string) true false) (= (upper-case string) string)))

(defn is-question?
	[string]
	(.endsWith string "?"))

(defn is-without?
	[string]
	(blank? string))

(defn response-for
	[string]
	(cond
		(is-without? string) "Fine. Be that way!"
		(is-yell? string) "Woah, chill out!"
		(is-question? string) "Sure."
		:else "Whatever."))