// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "DependencyInjection",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13),
        .watchOS(.v4),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "DependencyInjection",
            targets: ["DependencyInjection"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DependencyInjection",
            dependencies: []
        ),
        .testTarget(
            name: "DependencyInjectionTests",
            dependencies: ["DependencyInjection"]
        )
    ]
)
