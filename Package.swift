// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClearMeSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ClearMeSDK", targets: ["TrustKit", "ClearFaceCapture", "ClearUI", "ClearMeSDK"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.1/TrustKit.xcframework.zip", checksum: "74fd109477a5b17e8aea9340eac8d80ebcf2b002f55ebbe904251406f8957e37"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.1/ClearFaceCapture.xcframework.zip", checksum: "72824a893d6598864516c9b0d5a41b1f45cdce153d6a99217ca11e876e366af1"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.1/ClearUI.xcframework.zip", checksum: "05ee9980a59a04a56b68f5179ea7dcedec37ab8f6ddf32ccef2c5854b4f854e6"),
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.1/ClearMeSDK.xcframework.zip", checksum: "09553399559e7021ace570bfe5a1bdcde5fcddf668c151ddcbb8c17f6d1e0859"),
    ]
)
