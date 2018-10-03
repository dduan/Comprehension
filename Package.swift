// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Comprehension",
    products: [
        .library(
            name: "Comprehension",
            targets: ["Comprehension"]),
    ],
    targets: [
        .target(
            name: "Comprehension",
            dependencies: []),
        .testTarget(
            name: "ComprehensionTests",
            dependencies: ["Comprehension"]),
    ]
)
