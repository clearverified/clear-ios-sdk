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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.9/ClearMeSDK.xcframework.zip", checksum: "189190b9c5aca0f85ba64b35fa23652d57668cd9a995001ab8dcab190a03fd50"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.9/ClearFaceCapture.xcframework.zip", checksum: "c78ead269dae5cdcb94df11d56ea033797c455ee29029859ce2e1b40067af445"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.9/TrustKit.xcframework.zip", checksum: "05e0a976fe4616626b181beed9947a82af6ff23089c8fb5dc4544aa2e6e30c9f"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.9/ClearUI.xcframework.zip", checksum: "2cb33c7c773f7652f5fa786c33a98dca6643fdbccb833e81675a543ac90066cb"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.9/Lottie.xcframework.zip", checksum: "b7f8d7ff4f61b20ec183907f030bee2f9f75c252172011cd74a507981d76d577")
    ]
)
