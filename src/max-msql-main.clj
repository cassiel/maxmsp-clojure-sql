;; Script file to load in Max. This configuration is for SQL Server.

(require '(maxmsp-clojure-sql [util :as u]
                              [sql :as sql]))

(def state (atom u/INITIAL-CONFIG-MSSQL))

(defn host [h]
  (sql/subname state (str "//" h)))

(defn username [n]
  (sql/user state n))

(defn password [p]
  (sql/password state p))

(defn clearall []
  (.outlet max/maxObject 1 ["clear" "all"]))

(defn set-row
  [row-num row-items]
  (doseq [[n item] (u/enumerate 0 row-items)]
    (.outlet max/maxObject 1 ["set" n row-num item])))

(defn query
  ^{:doc "Query as single string, to drive a jit.cellblock.
          Easy to modify if you want prepared statements,
          or queries as token lists. Row 0 output is column names in Clojure
          keyword syntax."}
  [sql]
  (clearall)
  (.outlet max/maxObject 2 0)
  (let [{:keys [keys rows]} (sql/query @state sql)]
    (.outlet max/maxObject 2 (count rows))
    (set-row 0 (map str keys))
    (doseq [[n row] (u/enumerate 1 rows)]
      (set-row n row))))
