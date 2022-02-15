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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.5/ClearMeSDK.xcframework.zip", checksum: "5009bcc81757aa28b299e06923f8220c13b3dec4d78754b7c664102247d88cc7"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.5/ClearFaceCapture.xcframework.zip", checksum: "9b8a09b29918b4276d03563396383e809e356f5ea24aa0dd9f6e14c59275aec8"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.5/TrustKit.xcframework.zip", checksum: "aae91733339b7920be2b1efcb5cbe69e0156011c2a8b95b81187a3cd40e55aa3"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.5/ClearUI.xcframework.zip", checksum: "c61cd2b92b976088791cb8fc4053d5d793d7a7bf173d292d9b5ef0ef2a06af53"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.5/Lottie.xcframework.zip", checksum: "5f7f9d68afda25c2007e589ab0523ef27a01f0db8f228584ff081474083ff033")
    ]
)
