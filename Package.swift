// swift-tools-version: 5.9
import PackageDescription

/// GhostLayer.xcframework is built via CI on each release tag.
/// URL and checksum are updated automatically by the release workflow.
let package = Package(
    name: "GhostLayer",
    products: [
        .library(name: "GhostLayer", targets: ["GhostLayer"]),
    ],
    targets: [
        .target(
            name: "GhostLayer",
            dependencies: ["GhostLayerFFI"],
            path: "Sources/GhostLayer"
        ),
        .binaryTarget(
            name: "GhostLayerFFI",
            url: "https://github.com/sevenautumns/GhostLayer/releases/download/v0.1.2/GhostLayer.xcframework.zip",
            checksum: "57aa91b50c9bc51165c0c2d1c96779c0ed8f1d0a83465af24bacb556e35e6ad4"
        ),
        .testTarget(
            name: "GhostLayerTests",
            dependencies: ["GhostLayer"],
            path: "Tests/GhostLayerTests"
        ),
    ]
)
