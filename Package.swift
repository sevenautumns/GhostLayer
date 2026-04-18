// swift-tools-version: 5.9
import PackageDescription

// GhostLayer.xcframework is built via CI on each release tag.
// URL and checksum are updated automatically by the release workflow.
let package = Package(
    name: "GhostLayer",
    products: [
        .library(name: "GhostLayer", targets: ["GhostLayer"]),
    ],
    targets: [
        .binaryTarget(
            name: "GhostLayer",
            url: "https://github.com/sevenautumns/ghost_layer/releases/download/v0.0.3/GhostLayer.xcframework.zip",
            checksum: "68a7f3ee14057a5a23dd0731f92f07b77ef9bcd51164b805ef0ef446b28a0aa4"
        )
    ]
)
