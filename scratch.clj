(ns user
  (:require [clojure.java.jdbc :as jdbc]
            [sql-server-clj [sql :as s]]))

(def db {:subprotocol "sqlserver"
         :subname "//10.0.0.103"
         :user "test"
         :password "test"})

(jdbc/with-connection db
  (try
    (jdbc/drop-table :angels)
    (catch Exception _)))

(jdbc/with-connection db
  (jdbc/create-table
   :angels
   [:name "varchar(255)"]
   [:realname "varchar(255)"]
   [:birthplace "varchar(255)"]))

(jdbc/with-connection db
  (jdbc/insert-rows :angels
                   ["Destiny" "Juliette Pontoin" "Paris, France"]
                   ["Symphony" "Karen Wainwright" "Cedar Rapids, Iowa, USA"]
                   ["Melody" "Magnolia Jones" "Moffat, Atlanta, Georgia, USA"]
                   ["Rhapsody" "Dianne Simms" "Chelsea, London, UK"]
                   ["Harmony" "Chan Kwan" "Tokyo, Japan"]))

(jdbc/with-connection db
  (jdbc/with-query-results rows
    ["SELECT * FROM Angels"]
    (doseq [r rows]
      (println r))))

(s/query db "SELECT * FROM Angels")

(user/enumerate 0 ["A" "B" "C"])
