// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-modulus",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Modulus", targets: ["Modulus"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-stress.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-strain.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Modulus",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity"),
                .product(name: "Stress", package: "swift-stress"),
                .product(name: "Strain", package: "swift-strain"),
            ]
        ),
        .testTarget(
            name: "Modulus Tests",
            dependencies: [
                .target(name: "Modulus")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
