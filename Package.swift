// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "DockerPlugin",
    platforms: [.macOS(.v26)],
    products: [
        .library(name: "DockerPlugin", type: .dynamic, targets: ["DockerPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hytfjwr/StatusBarKit", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "DockerPlugin",
            dependencies: [
                .product(name: "StatusBarKit", package: "StatusBarKit"),
            ]
        ),
    ]
)
