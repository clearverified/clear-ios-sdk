// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ClearMeSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(name: "ClearMeSDK", targets: ["TrustKit", "ClearFaceCapture", "ClearUI", "ClearMeSDK"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.0/TrustKit.xcframework.zip", checksum: "71f454c34e7942f288d37af26d40289b774a272565760eff34d75b221e2bc985"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.0/ClearFaceCapture.xcframework.zip", checksum: "d9cfe38fa8ae025436be2571a7746902a782da33321a838f8f242567e27b2ab3"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.0.0/ClearUI.xcframework.zip", checksum: "0000000000000000000000000000000000000000000000000000000000000000"),
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.0/ClearMeSDK.xcframework.zip", checksum: "5d496c753b1e5b7f1e635f1d72a6e1be5ecfc5bbbaffe0ee53ffdbd44351ad5a"),
    ]
)
