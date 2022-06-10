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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.11/ClearMeSDK.xcframework.zip", checksum: "28425ca8c0c74cf4ff79aa3238d844ea32b33ca50a5388c68d4e6d01d7857033"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.11/ClearFaceCapture.xcframework.zip", checksum: "d62409ba0916d71e98370f07b57a1826169c296bd97f4e28e20334191ad01506"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.11/TrustKit.xcframework.zip", checksum: "bedcda6ce4bcf1435721aa8a3985309c5b044dc0f75c5b119bd45e7eab149e20"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.11/ClearUI.xcframework.zip", checksum: "566ae3f8c7cbf74ebfc88e3ad905d05a907bb59d45dbdcdc4c50b24b75cfb32e"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.11/Lottie.xcframework.zip", checksum: "97bfcaa7d44bf930eed7ddee77b127c29988a0f95c3040e1da4ddce0910aa1a8")
    ]
)
