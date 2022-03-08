// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClearMeSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ClearMeSDK", targets: ["ClearMeSDK", "ClearFaceCapture", "TrustKit", "ClearUI", "Lottie"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.6/ClearMeSDK.xcframework.zip", checksum: "eb7e9b829b4cc2e173fb6b9eca77e8c04a5377450f10022918567e5e07c31994"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.6/ClearFaceCapture.xcframework.zip", checksum: "56650f9586056d01058edee2c80f60f03787704a9b0905ff5855ff671e27f0ec"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.6/TrustKit.xcframework.zip", checksum: "e7655b0b1f68a3785ea6c2504de68abcda9e695c56c6e1c3407da1e8cb5658bc"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.6/ClearUI.xcframework.zip", checksum: "180dba8550eabd77f74fa10f3ffe26ed8d00bc00259e8345d14ea662f5fae048"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.6/Lottie.xcframework.zip", checksum: "14078276c5c0a5bcd367f1116c77312b34348cafd688c33a2755e20a9ef4f954")
    ]
)
