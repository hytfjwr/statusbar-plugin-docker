// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "DockerPlugin",
    platforms: [.macOS(.v26)],
    products: [
        .library(name: "DockerPlugin", type: .dynamic, targets: ["DockerPlugin"]),
    ],
    dependencies: [
        .package(path: "../macos-status-bar/StatusBarKit"),
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
