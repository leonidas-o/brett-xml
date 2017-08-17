// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "BML",
    dependencies: [
        .package(url: "https://github.com/vapor/core.git", .upToNextMajor(from: "2.1.2")),
        .package(url: "https://github.com/vapor/node.git", .upToNextMajor(from: "2.1.0"))
    ],
    targets: [
        .target(
            name: "BML",
            dependencies: ["Core", "Node"],
            path: "Sources"
        ),
        .testTarget(
            name: "BMLTests",
            dependencies: ["BML"]
        ),
    ]
)
