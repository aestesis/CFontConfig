// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CFontConfig",
    products: [
        .library(name: "CFontConfig",targets: ["CFontConfig"])
    ],
    dependencies: [
    ],
    targets: [
        .systemLibrary(
            name: "CFontConfig",
            pkgConfig: "cairo",
            providers: [
                .apt(["libcairo-dev"]),
                .brew(["cairo"]),
            ]
        )
    ]
)