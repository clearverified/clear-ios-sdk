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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.5.0/Clear.xcframework.zip", checksum: "5f567c5613b0e194435bc1eb2512061cfd2a9901ac32e903f997c0710d76a3c8"),
    ]
)
