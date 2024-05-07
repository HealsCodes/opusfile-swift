// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "opusfile-swift",
    products: [
        .library(
            name: "OpusFile",
            targets: ["OpusFile"]),
    ],
    dependencies: [
        .package(url: "https://github.com/HealsCodes/ogg-swift", from: "1.3.5"),
        .package(url: "https://github.com/HealsCodes/opus-swift", revision: "7f32c90063405ad719a367882e8c7275df40567a")
    ],
    targets: [
        // OpusFile native sources
        .target(
            name: "OpusFile",
            dependencies: [
                .product(name: "LibOgg", package: "ogg-swift"),
                .product(name: "LibOpus", package: "opus-swift"),
            ],
            path: "Sources/opusfile-swift",
            exclude: [],
            sources: [
                "./extra/opusfile_swift.h",
                "./native/src/info.c",
                "./native/src/internal.c",
                "./native/src/opusfile.c",
                "./native/src/stream.c",
            ],
            publicHeadersPath: "./native/include",
            cSettings: [
                .headerSearchPath("./extra"),
                .headerSearchPath("./native"),
                .headerSearchPath("./native/include"),
                .headerSearchPath("./native/src")
            ]
        )
    ]
)
