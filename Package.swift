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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.2/ClearMeSDK.xcframework.zip", checksum: "b78ed5edb0dc0fd13ff87db09157cab5fac2d83f425c9d95664823228d232aa0"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.2/ClearFaceCapture.xcframework.zip", checksum: "07e7fc09782c771299d1efefc23de99d43b0f9ebdb9b550d14a21e9cd8cd5972"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.2/TrustKit.xcframework.zip", checksum: "e464e09fc2f30e51c61eeb8f6d50bcae145e0d2b4fcc80aa8a1fdf39d950ada7"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.2/ClearUI.xcframework.zip", checksum: "35242d7e07dd07801d4f4d1eae2fca68a2d463f9af4cd831a4469bb4d3471ba4"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.2/Lottie.xcframework.zip", checksum: "1367ea9c3ff8da630584381cfcf8f8d2750fa687c703f66fdef3502f407ec0c4")
    ]
)
