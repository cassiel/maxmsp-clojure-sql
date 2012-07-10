(ns maxmsp-clojure-sql.util)

(def INITIAL-CONFIG-MSSQL
  ^{:doc "Initial configuration: MS SQL Server as sub-protocol."}
  {:subprotocol "sqlserver"})

(def INITIAL-CONFIG-MYSQL
  ^{:doc "Configuration for MySQL (untested)."}
  {:subprotocol "mysql"})

(defn check-config
  ^{:doc "Make sure all connection parameters are present."}
  [cfg]
  (if (and (:subname cfg)
           (:user cfg)
           (:password cfg))
    cfg
    (throw (IllegalArgumentException. "Missing arguments: check host, user, password"))))

(defn get-sorted-keys [rows]
  (if rows
    (sort (keys (first rows)))
    nil))

(defn de-key [keys row]
  (map (fn [k] (k row)) keys))

(defn enumerate
  [n items]
  (if (empty? items)
    nil
    (cons [n (first items)]
          (enumerate (inc n) (rest items)))))
