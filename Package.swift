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
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(
            name: "GoogleCast",
            url: "https://dl.google.com/dl/chromecast/sdk/ios/GoogleCastSDK-ios-4.8.3_static.zip",
            checksum: "b53cc17671154f5ff4ba99165a8b9a6d677e8165715830b91cc1857634b33901"
        ),
        .target(
            name: "GoogleCastWrapper",
            dependencies: [
                .target(name: "GoogleCast"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        )
    ]
)
