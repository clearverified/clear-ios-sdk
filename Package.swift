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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.0.0/Clear.xcframework.zip", checksum: "0f918537ae786b0853e4d8429125235999a19f85a034768fc697310c3ef28a11"),
    ]
)
