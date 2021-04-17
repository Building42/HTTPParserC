HTTP Parser
===========

[![HTTPParserC CI](https://github.com/Building42/HTTPParserC/actions/workflows/ci.yml/badge.svg)](https://github.com/Building42/HTTPParserC/actions/workflows/ci.yml)
[![Version](https://img.shields.io/cocoapods/v/HTTPParserC.svg)](https://cocoapods.org/pods/HTTPParserC)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/HTTPParserC.svg)](https://cocoapods.org/pods/HTTPParserC)
[![Platform](https://img.shields.io/cocoapods/p/HTTPParserC.svg)](https://cocoapods.org/pods/HTTPParserC)

HTTP message parser written in C. It parses both requests and
responses. The parser is designed to be used in performance HTTP
applications. It does not make any syscalls nor allocations, it does not
buffer data, it can be interrupted at anytime. Depending on your
architecture, it only requires about 40 bytes of data per message
stream (in a web server that is per connection).

Features:

  * No dependencies
  * Handles persistent streams (keep-alive).
  * Decodes chunked encoding.
  * Upgrade support
  * Defends against buffer overflow attacks.

The parser extracts the following information from HTTP messages:

  * Header fields and values
  * Content-Length
  * Request method
  * Response status code
  * Transfer-Encoding
  * HTTP version
  * Request URL
  * Message body

## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code.

Xcode 11 or later has integrated support for the Swift Package Manager. You can add Telegraph to your project by choosing the File - Swift Packages - Add Package Dependency option. Use the repository url as specified below and select the version you want to use.

Or you can manually add a `Package.swift` file to your project with:

```swift
dependencies: [
    .package(url: "https://github.com/Building42/HTTPParserC.git")
]
```

### Carthage

Carthage is a decentralized dependency manager that builds your dependencies into binary frameworks.

```ogdl
github "Building42/HTTPParserC"
```

See [Carthage - Quick Start](https://github.com/Carthage/Carthage/#quick-start) for more information.

### CocoaPods

CocoaPods is a dependency manager for Cocoa projects that makes dependencies a part of your workspace.

```ruby
source 'https://cdn.cocoapods.org/'
use_frameworks!

target '<Your Target Name>'

pod 'HTTPParserC'
```

See [CocoaPods - Getting Started](https://guides.cocoapods.org/using/getting-started.html) for more information.

## Documentation
Visit https://github.com/nodejs/http-parser for more information
