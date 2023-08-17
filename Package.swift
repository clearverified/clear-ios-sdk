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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.1.0/Clear.xcframework.zip", checksum: "74ef3560a0f2f002009ed7dde68aaf64d04415150aade24671a097728ac57fb6"),
    ]
)
