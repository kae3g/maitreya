(defproject maitreya-clojure-ui "0.1.0-SNAPSHOT"
  :description "MAITREYA DAW - Clojure Humble UI Frontend"
  :url "https://github.com/kae3g/maitreya"
  :license {:name "The Unlicense"
            :url "http://unlicense.org"}
  :dependencies [[org.clojure/clojure "1.11.1"]
                 [io.github.humbleui/humbleui "0.4.3"]
                 [org.clojure/data.json "2.4.0"]
                 [clj-audio "0.1.0"]]
  :main maitreya.core
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}
             :dev {:dependencies [[org.clojure/tools.namespace "1.3.0"]]}})
