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
        .binaryTarget(name: "Clear", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/1.1.0/Clear.xcframework.zip", checksum: "3a04ef32d0e919ab9ae67e01973d17d45a83b44e0183edb0f17a16729d09b53c"),
    ]
)
