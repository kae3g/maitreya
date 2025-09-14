# 🚀 MAITREYA Setup Guide
## Getting Started with Sovereign Digital Audio Workstation

> **Repository**: https://github.com/kae3g/maitreya  
> **Identity**: b122m faeb internet identity  
> **Purpose**: Complete setup instructions for MAITREYA DAW development

## 📋 Prerequisites

### Required Software
- **Clojure**: 1.11+ (for UI development)
- **Humble UI**: Latest version (Clojure UI framework)
- **Haskell**: GHC 9.0+ (for audio engine)
- **Rust**: 1.70+ (for performance components)
- **Git**: Version control system
- **GPG**: Code signing and verification
- **Java**: 11+ (for Clojure runtime)

### Operating System Support
- **macOS**: 10.15+ (primary development platform)
- **Linux**: Ubuntu 18.04+, CentOS 7+
- **Windows**: Windows 10+ with WSL2

### Hardware Requirements
- **RAM**: Minimum 8GB, Recommended 16GB+
- **Storage**: 5GB free space
- **Audio Interface**: ASIO/Core Audio compatible
- **CPU**: Multi-core processor recommended

## 🔑 Identity Setup (Required First)

### Step 1: Generate GPG Key
```bash
# Generate new GPG key
gpg --full-gen-key

# Choose options:
# 1. (9) ECC and ECC
# 2. (1) Curve 25519
# 3. 0 = key does not expire
# 4. Identity: "maitreya (b122m faeb internet identity) <your-email@gmail.com>"
```

### Step 2: Configure Git Signing
```bash
# Set git configuration
git config --global user.name "maitreya"
git config --global user.email "your-email@gmail.com"
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true
```

## 📥 Installation

### Step 1: Clone Repository
```bash
# Clone MAITREYA repository
git clone https://github.com/kae3g/maitreya.git
cd maitreya

# Verify repository integrity
git verify-commit HEAD
```

### Step 2: Initialize Identity
```bash
# Run identity initialization script
./bin/init-identity
```

### Step 3: Set Up Development Environment
```bash
# Install Clojure dependencies
lein deps

# Set up Haskell environment
stack setup

# Set up Rust environment
cargo build
```

## 🛠️ Development Environment Setup

### macOS Setup
```bash
# Install Homebrew (if not installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install clojure leiningen haskell-stack rust git gnupg

# Install Java 11+
brew install openjdk@11
export JAVA_HOME=/opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
```

### Linux Setup
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install openjdk-11-jdk clojure leiningen haskell-stack rustc cargo git gnupg

# CentOS/RHEL
sudo yum install java-11-openjdk-devel clojure leiningen haskell-stack rust cargo git gnupg

# Set Java environment
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
```

### Windows Setup
```bash
# Install WSL2 with Ubuntu
wsl --install

# In WSL2 Ubuntu:
sudo apt update
sudo apt install openjdk-11-jdk clojure leiningen haskell-stack rustc cargo git gnupg
```

## 🎵 Audio Setup

### macOS Audio Configuration
```bash
# Install Core Audio tools
brew install portaudio

# Configure audio permissions
# Go to System Preferences > Security & Privacy > Microphone
# Grant permission to Terminal/IDE
```

### Linux Audio Configuration
```bash
# Install ALSA/Jack
sudo apt install alsa-utils jackd2

# Start Jack daemon
jackd -R -d alsa -d hw:0 -r 44100 -p 1024

# Install PulseAudio JACK sink
sudo apt install pulseaudio-module-jack
```

### Windows Audio Configuration
```bash
# Install ASIO4ALL
# Download from: https://www.asio4all.org/

# Configure audio settings in Windows
# Set default audio device
# Configure sample rate (44100 Hz recommended)
```

## 🔨 Building MAITREYA

### Clojure UI Build
```bash
# Build Clojure application
lein uberjar

# Run development server
lein run

# Run tests
lein test
```

### Haskell Audio Engine Build
```bash
# Build Haskell components
stack build

# Run Haskell tests
stack test

# Build optimized version
stack build --flag maitreya:optimized
```

### Rust Performance Components Build
```bash
# Build Rust components
cargo build

# Build optimized version
cargo build --release

# Run Rust tests
cargo test
```

### Complete Build
```bash
# Build all components
./build-macOS.sh

# This will:
# - Build Clojure UI
# - Build Haskell audio engine
# - Build Rust performance components
# - Create application bundle
```

## 🧪 Testing

### Unit Tests
```bash
# Clojure tests
lein test

# Haskell tests
stack test

# Rust tests
cargo test
```

### Integration Tests
```bash
# Audio integration tests
./test-audio.sh

# UI integration tests
./test-ui.sh

# Performance tests
./test-performance.sh
```

### Manual Testing
```bash
# Start MAITREYA
./maitreya

# Test audio recording
# Test playback
# Test project save/load
```

## 🎛️ Configuration

### Audio Configuration
```bash
# Edit audio settings
vim resources/config/audio.edn

# Key settings:
# - Sample rate: 44100 Hz
# - Buffer size: 1024 samples
# - Audio interface: Default or specific device
```

### UI Configuration
```bash
# Edit UI settings
vim resources/config/ui.edn

# Key settings:
# - Color scheme: Dark blue-green naga
# - Window size: 1200x800
# - Theme: Gentle revolution
```

### Performance Configuration
```bash
# Edit performance settings
vim resources/config/performance.edn

# Key settings:
# - CPU usage limit: 80%
# - Memory limit: 2GB
# - Thread count: Auto-detect
```

## 🐛 Troubleshooting

### Common Issues

#### Audio Issues
```bash
# Check audio devices
./check-audio.sh

# Reset audio system
sudo pkill -f jackd
jackd -R -d alsa -d hw:0 -r 44100 -p 1024
```

#### Build Issues
```bash
# Clean and rebuild
lein clean
stack clean
cargo clean

# Rebuild all
./build-macOS.sh
```

#### Performance Issues
```bash
# Check system resources
./check-performance.sh

# Optimize settings
vim resources/config/performance.edn
```

### Getting Help
```bash
# Check logs
tail -f logs/maitreya.log

# Debug mode
./maitreya --debug

# Verbose output
./maitreya --verbose
```

## 📚 Next Steps

### After Setup
1. **Read Documentation**: Start with `docs/development/phase1-clojure.md`
2. **Explore Examples**: Check `examples/` directory
3. **Join Community**: Visit GitHub discussions
4. **Start Creating**: Make your first track

### Development Workflow
1. **Make Changes**: Edit source files
2. **Test Changes**: Run test suite
3. **Build Changes**: Compile components
4. **Commit Changes**: Sign commits with GPG
5. **Push Changes**: Update repository

### Learning Resources
- **README**: https://github.com/kae3g/maitreya/blob/main/README.md
- **Phase 1 Guide**: https://github.com/kae3g/maitreya/blob/main/docs/development/phase1-clojure.md
- **Phase 2 Guide**: https://github.com/kae3g/maitreya/blob/main/docs/development/phase2-haskell.md
- **Tutorials**: https://github.com/kae3g/maitreya/blob/main/docs/tutorials/

## 🔐 Security Considerations

### Code Signing
- All commits must be GPG signed
- Verify commits: `git verify-commit HEAD`
- Check repository integrity regularly

### Audio Security
- Use trusted audio drivers
- Verify audio file integrity
- Check for audio malware

### Development Security
- Use secure development practices
- Regular security updates
- Monitor for vulnerabilities

## 📞 Support

### Getting Help
- **GitHub Issues**: https://github.com/kae3g/maitreya/issues
- **Discussions**: https://github.com/kae3g/maitreya/discussions
- **Documentation**: https://github.com/kae3g/maitreya/docs

### Community Guidelines
- **Be Respectful**: Follow gentle revolution principles
- **Be Creative**: Share your musical creations
- **Be Helpful**: Help other users learn
- **Be Inclusive**: Welcome everyone

---
*This setup guide ensures you can get started with MAITREYA quickly and create beautiful music.* 🌸💙

**Generated**: 2025-09-13--2200--PACIFIC-WEST-STANDARD  
**Repository**: https://github.com/kae3g/maitreya  
**Identity**: b122m faeb internet identity
