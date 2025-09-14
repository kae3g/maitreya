(ns maitreya.core
  (:require [humble.ui :as ui]
            [maitreya.ui.main-window :as main-window]
            [maitreya.audio.engine :as audio-engine]))

(defn -main
  "MAITREYA DAW - Main entry point"
  [& args]
  (println "🎵 MAITREYA DAW Starting...")
  (println "💙 b122m faeb gentle revolution")
  
  ;; Initialize audio engine
  (audio-engine/initialize)
  
  ;; Start main UI
  (ui/start!
    (main-window/app)
    {:title "MAITREYA DAW"
     :width 1200
     :height 800
     :theme :dark-blue-green}))
