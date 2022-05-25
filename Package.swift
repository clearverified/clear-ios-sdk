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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.10/ClearMeSDK.xcframework.zip", checksum: "9e6bf976d1020c021a57a95d7c971c63e68436fd1d9b74201f6de539e64bbadd"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.10/ClearFaceCapture.xcframework.zip", checksum: "0732dff6c247748104f0ceb8e90aa8a0f5b44871c402d9d4f24a91fb3f6674d2"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.10/TrustKit.xcframework.zip", checksum: "46f521cac7b95e49cceae923964e9613c4135bd91abd1af69f0afc801060a0fa"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.10/ClearUI.xcframework.zip", checksum: "d648b34c6de953a25db95a1e4bc312f2602c838d5fbdd4464a8d7a7454abefea"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.10/Lottie.xcframework.zip", checksum: "ce92149176561da846562c7bf1aae18704e6fd1777e5891dc40da6a0f4fc4557")
    ]
)
