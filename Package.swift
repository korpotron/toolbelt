// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Toolbelt",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "Toolbelt",
            targets: [
                "Toolbelt",
            ]
        ),
    ],
    targets: [
        .target(
            name: "Toolbelt",
            swiftSettings: [
                .define("USE_TOOLBELT", .when(configuration: .debug)),
            ]
        ),
    ]
)
