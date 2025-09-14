(ns maitreya.audio.engine
  (:require [clojure.core.async :as async]))

(def ^:private audio-context (atom nil))
(def ^:private sample-rate 44100)
(def ^:private buffer-size 1024)

(defn initialize
  "Initialize the audio engine"
  []
  (println "🔊 Initializing MAITREYA Audio Engine...")
  (reset! audio-context {:sample-rate sample-rate
                        :buffer-size buffer-size
                        :channels 2
                        :latency-ms 10})
  (println "✅ Audio engine initialized"))

(defn generate-sine-wave
  "Generate a sine wave at given frequency and duration"
  [frequency duration-ms]
  (let [samples (int (* sample-rate (/ duration-ms 1000.0)))
        omega (* 2 Math/PI frequency)]
    (mapv (fn [n]
            (Math/sin (* omega (/ n sample-rate))))
          (range samples))))

(defn create-wavetable
  "Create a wavetable from mathematical function"
  [function size]
  (mapv (fn [n]
          (function (* 2 Math/PI (/ n size))))
        (range size)))

(defn process-audio
  "Process audio with real-time constraints"
  [input-buffer]
  (-> input-buffer
      ;; Apply b122m faeb gentle processing
      (mapv (fn [sample]
              (* sample 0.8))) ; Gentle volume reduction
      ;; SIEGE mathematical precision
      (mapv (fn [sample]
              (Math/round (* sample 1000000.0))))) ; Integer execution
