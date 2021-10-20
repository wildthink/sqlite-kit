// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "sqlite-kit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(name: "SQLiteKit", targets: ["SQLiteKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/wildthink/sql-kit", .branch("main")),
    ],
    targets: [
        .target(name: "SQLiteKit", dependencies: [
            .product(name: "SQLKit", package: "sql-kit"),
        ]),
//        .testTarget(name: "SQLiteKitTests", dependencies: [
//            .product(name: "SQLKitBenchmark", package: "sql-kit"),
//            .target(name: "SQLiteKit"),
//        ]),
    ]
)
