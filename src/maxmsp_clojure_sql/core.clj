(ns maxmsp-clojure-sql.core
  (:gen-class
   :name clojure.SQLServer
   :prefix max-
   :extends com.cycling74.max.MaxObject
   :state state
   :init init)
  (:require (maxmsp-clojure-sql [sql :as sql]
                                [util :as u])))

(defn max-init
  ^{:doc "Initialise. Initial config: MS SQL Server as sub-protocol."}
  []
  [[] (atom u/INITIAL-CONFIG)])

(defn max-bang [this]
  (println "-BANG-!"))

(defn max-host [this h]
  (sql/host (.state this) h)
  )

(defn max-username [this n]
  (sql/username (.state this) n)
  )

(defn max-password [this p]
  (sql/password (.state this) p))

(defn max-anything [this cmd args]
  (println (str "GOT" cmd))
  (doseq [a args] (println a)))
