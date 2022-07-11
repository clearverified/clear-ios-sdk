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
        .binaryTarget(name: "ClearMeSDK", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.12/ClearMeSDK.xcframework.zip", checksum: "32b5da20e48be84ec06ca4432bd1f0f4ec0085302046c55ce6236617defcadee"),
        .binaryTarget(name: "ClearFaceCapture", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.12/ClearFaceCapture.xcframework.zip", checksum: "6d0f94ab9a485376d89f96ef5aab76e0581c309e6c74778a1a85b2a19785dcd6"),
        .binaryTarget( name: "TrustKit", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.12/TrustKit.xcframework.zip", checksum: "3bd02c6a389db4c0c868de06fd41b08d240501c943902ec7be4a5f6d237656bf"),
        .binaryTarget(name: "ClearUI", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.12/ClearUI.xcframework.zip", checksum: "22722e01764efd32c69ed08fa1bd254813311e1940a62073036b2fe601c744df"),
        .binaryTarget(name: "Lottie", url: "https://github.com/clearsecureidentity/clear-ios-sdk/releases/download/0.10.12/Lottie.xcframework.zip", checksum: "f715d04fe71f46e55815d137e4ade7b174568ffbede9b081f9fb5a9d5ad6cb06")
    ]
)
