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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.8/ClearMeSDK.xcframework.zip", checksum: "010ac88cbb1563f4a1dcdbf00e7b746f200e769bd1188305ae6d68be1b33c99e"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.8/ClearFaceCapture.xcframework.zip", checksum: "89f74d6d93fa5cf343b8d62d6c1c991f7d4ac0f96206a20193346eff95bd6784"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.8/TrustKit.xcframework.zip", checksum: "5c29e74ce2c47a5f525711bd783c335fd5371444dd47147e388a01b701168601"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.8/ClearUI.xcframework.zip", checksum: "ee4864598cd3ab8bb551ec5d5c217b3fd1c11fcc97769841dfcb404dfb053e9b"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.8/Lottie.xcframework.zip", checksum: "f96cdea96db1b35ff2ffe805b36009e95d8443ac70be4444434adf5b54c4c276")
    ]
)
