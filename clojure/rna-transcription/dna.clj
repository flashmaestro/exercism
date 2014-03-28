(ns dna)


(defn to-rna
	[string]
	(if (re-seq #"[^G|^A|^U|^T|^C]" string) (assert nil) (clojure.string/replace string #"G|C|T|A" {"G" "C" "C" "G" "T" "A" "A" "U"})))