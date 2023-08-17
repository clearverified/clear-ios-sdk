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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.1.0/Clear.xcframework.zip", checksum: "9ae87754ae9ded6424d8fb979676b29285f799ea7d1d5df38bc68d805d3922ab"),
    ]
)
