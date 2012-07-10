(ns maxmsp-clojure-sql.sql
  (:require [clojure.java [jdbc :as jdbc]]
            [maxmsp-clojure-sql [util :as u]]))

(defn subname
  ^{:doc "Set the subname. This will incorporate host, perhaps port,
          and perhaps database name. (This is the syntax for SQL
          Server and MySQL; I don't know about others.) "}
  [cfg sn]
  (swap! cfg #(assoc % :subname sn)))

(defn user
  [cfg n]
  (swap! cfg #(assoc % :user n)))

(defn password
  [cfg p]
  (swap! cfg #(assoc % :password p)))

(defn query
  ^{:doc "Sanitised query results, friendly to MaxMSP."}
  [cfg sql]
  (jdbc/with-connection (u/check-config cfg)
    (jdbc/with-query-results rows
      [sql]
      (let [r (into [] rows)
            keys (u/get-sorted-keys r)]
        (if keys
          {:keys keys
           :rows (map (partial u/de-key keys) r)}
          nil)))))
