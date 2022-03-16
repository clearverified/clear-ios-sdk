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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.7/ClearMeSDK.xcframework.zip", checksum: "f029946316e9ddf5f357f468a31bab6fcf81d6219d4b9c159bf1e780e23e009d"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.7/ClearFaceCapture.xcframework.zip", checksum: "fc996c81ee5f30e3c73442fe8b0f04b2f9bf6949ce8e552504d66cfd0f142622"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.7/TrustKit.xcframework.zip", checksum: "f069b5decea967fdecdf5399b564021f1f16c37e79252809fef83cb09a18a7f2"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.7/ClearUI.xcframework.zip", checksum: "dd97eaee080e237e8127ec88def12d50a643a572e630571ae8f60c3bb8cb31f9"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.7/Lottie.xcframework.zip", checksum: "38c56ffcbcd9974b65b03ee3c86fe5c44b0dc2afa8d10b337e0f5695d205797d")
    ]
)
