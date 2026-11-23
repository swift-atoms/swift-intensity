// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-intensity",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Intensity", targets: ["Intensity"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-power.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-space.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Intensity",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity"),
                .product(name: "Power", package: "swift-power"),
                .product(name: "Space", package: "swift-space"),
            ]
        ),
        .testTarget(
            name: "Intensity Tests",
            dependencies: [
                .target(name: "Intensity")
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
