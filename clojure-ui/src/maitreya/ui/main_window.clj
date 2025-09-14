(ns maitreya.ui.main-window
  (:require [humble.ui :as ui]
            [maitreya.ui.track-panel :as track-panel]
            [maitreya.ui.toolbar :as toolbar]
            [maitreya.ui.transport :as transport]))

(defn app
  "Main MAITREYA DAW application window"
  []
  (ui/column
    {:padding 8
     :gap 8
     :background-color [0.1 0.15 0.2] ; Dark blue-green naga snake theme
     :child
     (ui/column
       {:gap 8
        :children
        [(toolbar/main-toolbar)
         (ui/row
           {:gap 8
            :children
            [(track-panel/track-list)
             (ui/column
               {:gap 8
                :children
                [(ui/rect
                   {:fill [0.05 0.1 0.15] ; Darker background
                    :child (ui/label "🎵 Timeline")})
                 (ui/rect
                   {:fill [0.08 0.12 0.18]
                    :child (ui/label "🎛️ Mixer")})]})]})
         (transport/transport-controls)]})}))
