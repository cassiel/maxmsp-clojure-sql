(defproject eu.cassiel/maxmsp-clojure-sql "0.1.0-SNAPSHOT"
  :description "SQL for MaxMSP"
  :url "https://github.com/cassiel/maxmsp-clojure-sql"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.3.0"]
                 [org.clojure/java.jdbc "0.2.3"]
                 [local.microsoft/local.microsoft.sqljdbc4 "4.0.2206.100"]
                 [com.cycling74/com-cycling74-max "5.1.9"]]
  :aot [maxmsp-clojure-sql.core])
