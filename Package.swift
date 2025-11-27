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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterFan.zip",
            checksum: "a118fadd93473f4232a4ba40c806e6a724734738e63d02386baa5b0fdfc21533"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/FBAudienceNetwork.xcframework.zip",
            checksum: "dee658acdb07bd64e3a0c375611f4d721fe64c131234ef74a609c6875f013d3c"
        ),
    ]
)
