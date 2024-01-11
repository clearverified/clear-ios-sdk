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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.3.0/Clear.xcframework.zip", checksum: "96f559a84ecf46a0157c03d051ae5bef46b2b714126135a7f6953c1d7d0dd2e7"),
    ]
)
