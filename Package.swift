// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "GradientView",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11)
    ],
    products: [
        .library(
            name: "GradientView",
            targets: ["GradientView"]),
    ],
    targets: [
        .target(
            name: "GradientView",
            dependencies: []),
        .testTarget(
            name: "GradientViewTests",
            dependencies: ["GradientView"]),
    ]
)
