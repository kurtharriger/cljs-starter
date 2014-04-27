(defproject om-project "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.5.1"]
                 [org.clojure/clojurescript "0.0-2173"]
                 [om "0.6.2"]]
  :plugins [[lein-cljsbuild "1.0.2"]]
  :cljsbuild
  {:builds [{:id "dev"
             :source-paths ["src"]
             :compiler
             {:output-to "public/cljs/main.js"
              :output-dir "public/cljs/out"
              :optimizations :none
              :source-map true}}]})
