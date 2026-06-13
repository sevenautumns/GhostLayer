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
            url: "https://github.com/sevenautumns/GhostLayer/releases/download/v0.2.0/GhostLayer.xcframework.zip",
            checksum: "581365bcbcf1ec300dbcdd7dac74e10f12dff2908bfa106594e935b3a36bed69"
        ),
        .testTarget(
            name: "GhostLayerTests",
            dependencies: ["GhostLayer"],
            path: "Tests/GhostLayerTests"
        ),
    ]
)
