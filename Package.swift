// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterFan",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterFan",
            targets: ["AdiscopeMediaMaxAdapterFanTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterFanTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterFan"),
                .target(name: "FBAudienceNetwork"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterFan",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterFan.zip",
            checksum: "969b6a9f37657c9615533636f50839fa4a5871f1b75e9bddc4f09e96c346aaf9"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/FBAudienceNetwork.xcframework.zip",
            checksum: "584282ccc2121d3d4c51ea69049665695fbf93c2b581a1e07ddb8b9964d3f1d4"
        ),
    ]
)
