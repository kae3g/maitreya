# 🎨 Clojure UI Guide - MAITREYA DAW Interface

> **Humble UI Integration** | **macOS Native Experience** | **Dark Blue-Green
Theme**

![Parametric Flower](parametric-flower-compressed.png)

## 🌟 Overview

The Clojure UI serves as the primary interface for MAITREYA DAW, built with
Humble UI for native macOS integration. It provides a REAPER-inspired layout
with b122m faeb gentle revolution aesthetics.

## 🎨 Visual Design Philosophy

### Color Scheme
- **Background**: Dark blue-green naga snake theme `[0.1 0.15 0.2]`
- **Accent**: Golden ratio blue `[0.2 0.4 0.6]`
- **Text**: Gentle white `[0.9 0.95 1.0]`
- **Highlights**: Golden ratio proportions

### Layout Principles
- **REAPER-Inspired**: Familiar DAW workflow
- **Educational Focus**: Clear, intuitive interface
- **Mathematical Precision**: Golden ratio spacing
- **Gentle Revolution**: Peaceful, non-aggressive design

## 🏗️ Architecture

### Core Components
```clojure
;; Main Application Structure
(defn app []
  (ui/column
    {:padding 8
     :gap 8
     :background-color [0.1 0.15 0.2]
     :child
     (ui/column
       {:gap 8
        :children
        [(toolbar/main-toolbar)
         (track-panel/track-list)
         (transport/transport-controls)]})}))
```

### Component Hierarchy
1. **Main Window** - Primary application container
2. **Toolbar** - File operations and tools
3. **Track Panel** - Audio track management
4. **Timeline** - Audio editing canvas
5. **Mixer** - Audio level controls
6. **Transport** - Playback controls

## 🎛️ Key Features

### 1. macOS Integration
- **Dock Application**: Custom MAITREYA icon
- **Window Management**: Native macOS behavior
- **Keyboard Shortcuts**: Standard DAW shortcuts
- **File Associations**: .maitreya project files

### 2. Audio Visualization
```clojure
;; Real-time audio visualization
(defn audio-visualizer [audio-data]
  (ui/rect
    {:fill [0.05 0.1 0.15]
     :child
     (ui/column
       {:children
        (map (fn [sample]
               (ui/rect
                 {:width (* sample 100)
                  :height 2
                  :fill [0.2 0.4 0.6]}))
             audio-data)})}))
```

### 3. Wavetable Generator
- **Sine Wave Creation**: Mathematical precision
- **Frequency Control**: Real-time adjustment
- **Duration Settings**: Precise timing control
- **Export Options**: Multiple audio formats

## 🎵 Audio Integration

### Real-time Processing
```clojure
;; Audio engine integration
(defn process-audio [input-buffer]
  (-> input-buffer
      (audio-engine/apply-gentle-scaling)
      (audio-engine/apply-siege-precision)
      (audio-engine/update-gui-visualization)))
```

### File Management
- **Project Files**: .maitreya format
- **Audio Import**: WAV, OGG, MP3 support
- **Export Options**: Multiple formats
- **Backup System**: Automatic project saving

## 🎓 Educational Features

### Tutorial Integration
- **Interactive Guides**: Step-by-step learning
- **Visual Feedback**: Real-time concept demonstration
- **Progress Tracking**: Learning milestone recording
- **Teen-Friendly**: Age-appropriate content

### Music Theory Visualization
```clojure
;; Harmonic series visualization
(defn harmonic-visualizer [fundamental-freq]
  (ui/column
    {:children
     (map (fn [harmonic]
            (ui/rect
              {:width (* 50 (/ 1.0 harmonic))
               :height 20
               :fill (golden-ratio-color harmonic)}))
          (range 1 9))}))
```

## 🔧 Development Guide

### Project Structure
```
clojure-ui/
├── src/maitreya/
│   ├── core.clj              # Main application
│   ├── ui/
│   │   ├── main_window.clj   # Primary interface
│   │   ├── toolbar.clj       # Tool controls
│   │   ├── track_panel.clj   # Track management
│   │   └── transport.clj     # Playback controls
│   └── audio/
│       └── engine.clj        # Audio processing
├── project.clj               # Leiningen configuration
└── resources/                # Static assets
```

### Building and Running
```bash
# Development mode
cd clojure-ui
clj -M:dev

# Production build
clj -M:uberjar
```

### Testing
```bash
# Run tests
clj -M:test

# Interactive development
clj -M:dev -m maitreya.core
```

## 🎨 Customization

### Theme Modification
```clojure
;; Custom theme configuration
(def custom-theme
  {:colors
   {:background [0.1 0.15 0.2]
    :accent [0.2 0.4 0.6]
    :text [0.9 0.95 1.0]
    :highlight [0.3 0.5 0.7]}
   :spacing
   {:padding 8
    :gap 4
    :golden-ratio 1.618}})
```

### Component Extension
```clojure
;; Custom component creation
(defn my-custom-panel []
  (ui/column
    {:background-color [0.05 0.1 0.15]
     :padding 8
     :child
     (ui/label "Custom Panel")}))
```

## 🔗 Integration Points

### Haskell Core
- **Functional Processing**: Mathematical audio operations
- **SIEGE Expressions**: Integer execution integration
- **Type Safety**: Strong typing for audio data

### Rust Engine
- **Performance**: High-speed audio processing
- **WebAssembly**: Cross-platform deployment
- **Memory Safety**: Safe audio buffer management

### GIOIA Library
- **Poetry Integration**: Dana Gioia content
- **User Management**: Account and preferences
- **Educational Content**: Tutorial integration

## 📄 License

The Unlicense - a gift of freedom to the world

---

*Clojure UI: Where functional programming meets beautiful design in the gentle
revolution of audio creation.* 🎨💙
