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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.2.0/Clear.xcframework.zip", checksum: "33dd8267ebaef76b28d3e206c556018334bca8dc18482222c4863272b5668d10"),
    ]
)
