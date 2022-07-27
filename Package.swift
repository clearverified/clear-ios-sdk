// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Clear",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "Clear", targets: ["Clear"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.0.0/Clear.xcframework.zip", checksum: "0000000000000000000000000000000000000000000000000000000000000000"),
    ]
)
