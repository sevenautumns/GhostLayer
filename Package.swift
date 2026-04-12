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
            url: "https://github.com/sevenautumns/ghost_layer/releases/download/v0.0.1/GhostLayer.xcframework.zip",
            checksum: "c422deb187ee07b3f10578737036279d8b0a2a90cef061849b5d5ba2a7f64065"
        )
    ]
)
