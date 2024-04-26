// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "pose_estimation",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "pose_estimation",
            targets: [
                "pose_estimation",
                "pose_estimation_sdk_core",
                "pose_estimation_effect_player",
                "pose_estimation_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "pose_estimation",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/pose_estimation.zip",
            checksum: "f99508588bd36bbf55225f097867936afc448ee0ca04479f01d2bdda01236e7a"
        ),
        .target(
            name: "pose_estimation_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "pose_estimation_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "pose_estimation_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
