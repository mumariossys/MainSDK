// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MainSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MainSDK",
            targets: ["MainSDK", "InnerFramework"])
    ],
    targets: [
        .binaryTarget(name: "MainSDK", path:"./Sources/MainSDK.xcframework"),
        .binaryTarget(name: "InnerFramework", path:"./Sources/InnerFramework.xcframework"),
//        .binaryTarget(
//            name: "InnerFramework",
//            url: "https://github.com/mumariossys/InnterFramework/releases/download/1.0/InnerFramework.xcframework.zip",
//             checksum: "1f8eea42dc49cf9c3e692bda74e8418413b95db44a9b68a7a1673f114d67b06b"),
//        .binaryTarget(
//            name: "MainSDK",
//            url: "https://github.com/mumariossys/MainSDK/releases/download/1.0.0/MainSDK.xcframework.zip",
//             checksum: "3360515b597461d613345d1a642fa9c1b12d9bab6ea9164a693538a45da3a315")
    ]
)
