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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterFanTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterFan"),
                .target(name: "AdiscopeMediaMaxAdapterFanAdapter"),
                .target(name: "FBAudienceNetwork"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterFan",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterFan.zip",
            checksum: "c44e991dc899fb7e92b8f4f98bd6e48a8c3ace0768a3c2b9da5119fdef3c1965"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterFanAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationFacebookAdapter.xcframework.zip",
            checksum: "841b869c87c39eccb8846988894d89bfd319dc8952435fc7ab89b945c99140e4"
        ),
        .binaryTarget(
            name: "FBAudienceNetwork",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/FBAudienceNetwork.xcframework.zip",
            checksum: "9f7d359e101b0aebcad4b2b1e93bc7fc06fd0581d2a607fa91b96fdab316c817"
        ),
    ]
)
