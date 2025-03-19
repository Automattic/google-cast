// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoogleCast",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GoogleCast",
            targets: ["GoogleCast"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GoogleCast",
            url: "https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-4.8.3_static.zip",
            checksum: "c8a1c8e205f394edaeb681714a58d30086427a77a641911008f7e894eb5a83ed"
        )
    ]
)
