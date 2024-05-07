# opusfile-swift
This package was created to provide an easy-to-maintain binding for [opusfile](https://opus-codec.org/docs/opusfile_api-0.12/index.html)

# Version
The current release supports libopusfile v0.12

# Usage
This package is supposed to be used with SwiftPM or added as a Package dependency from XCode.

For Swift Package Manager add the following lines your Package.swift under `dependencies`:

```swift
  .package(
    name: "opusfile-swift",
    url: "https://github.com/HealsCodes/opusfile-swift.git",
    from: "0.12.0"
  )
```

To use the package in your swift code simply import it:

```swift
import OpusFile
```

# Licensing
This project is under MIT license. 

libopus sources are pulled from [https://gitlab.xiph.org/xiph/opusfile](https://gitlab.xiph.org/xiph/opusfile/). 

Opus is licensed under the [New BSD License](https://wiki.xiph.org/XiphWiki:Copyrights). 
