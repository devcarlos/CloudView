// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudView",
    products: [
        .library(
            name: "CloudView",
            targets: ["CloudView"]),
    ],
    targets: [
        .target(
            name: "CloudView",
            dependencies: []),
        .testTarget(
            name: "CloudViewTests",
            dependencies: ["CloudView"]),
    ]
)
