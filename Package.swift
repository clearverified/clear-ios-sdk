// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClearMeSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ClearMeSDK", targets: ["TrustKit", "ClearFaceCapture", "ClearMeSDK"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget( name: "TrustKit", url: "https://github.com/unrestrictedidentity/clear-mobile-sdk-ios-public/releases/download/0.0.0/TrustKit.xcframework.zip", checksum: "0000000000000000000000000000000000000000000000000000000000000000"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/unrestrictedidentity/clear-mobile-sdk-ios-public/releases/download/0.0.0/ClearFaceCapture.xcframework.zip", checksum: "0000000000000000000000000000000000000000000000000000000000000000"),
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/unrestrictedidentity/clear-mobile-sdk-ios-public/releases/download/0.0.0/ClearMeSDK.xcframework.zip", checksum: "0000000000000000000000000000000000000000000000000000000000000000"),
    ]
)
