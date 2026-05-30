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
            url: "https://github.com/sevenautumns/GhostLayer/releases/download/v0.1.1/GhostLayer.xcframework.zip",
            checksum: "1b5d146677804516075031adc14de64a0653d38d4a49254a4d5403b459420825"
        ),
        .testTarget(
            name: "GhostLayerTests",
            dependencies: ["GhostLayer"],
            path: "Tests/GhostLayerTests"
        ),
    ]
)
