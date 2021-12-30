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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.3/ClearMeSDK.xcframework.zip", checksum: "c8324a837fa0d3bf6856f58910d3d7a2684ff6521a4145f7617dbe99586dfbeb"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.3/ClearFaceCapture.xcframework.zip", checksum: "7820ed1927d37f87b39f163223e9e0c7b055220535a8d2eea81a58463cdb2fa4"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.3/TrustKit.xcframework.zip", checksum: "ef9c45b7f22ba4d33db1da05b7737e9a2283edf44ed083ac63efc2b09b1c1516"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.3/ClearUI.xcframework.zip", checksum: "335a9f41cee2357663328c0740b46f2c4cee801e2e6ba4daf098a1f3d58cf237"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.3/Lottie.xcframework.zip", checksum: "52dbc82b5402290762e06077d9fff416a1234beea8e1dbc6cf5266acedade9c0")
    ]
)
