// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RRuleSwift",
    products: [
        .library(
            name: "RRuleSwift",
            targets: ["RRuleSwift"]
        ),
    ],
    targets: [
        .target(
            name: "RRuleSwift",
            resources: [
              .process("lib")
            ]
        ),
        .testTarget(
            name: "RRuleSwiftTests",
            dependencies: ["RRuleSwift"]
        ),
    ]
)
