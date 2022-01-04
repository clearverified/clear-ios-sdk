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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.4/ClearMeSDK.xcframework.zip", checksum: "55a3e8baff319785dbbdd4354c5de84815a6f77a8dbf8d9b7c0ef9f0691d2ace"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.4/ClearFaceCapture.xcframework.zip", checksum: "b26d1c1a3f51518d329b6760585130bd83d85dc4218489ca2707692eda5b8f26"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.4/TrustKit.xcframework.zip", checksum: "43f5ceb3d4f4697bb10a84d3d02c07f21267c8af4640084362fa43a436b7ebce"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.4/ClearUI.xcframework.zip", checksum: "601bba152be39aa96480d4fc52b880b038156b9f0836de913ffda3f5623190ba"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.4/Lottie.xcframework.zip", checksum: "081db8bde023453287e8b67aca9b985a766af2a50c64964452f7dace116c94d5")
    ]
)
