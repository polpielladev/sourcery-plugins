// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SourceryPlugins",
    products: [
        .plugin(name: "SourceryCommand", targets: ["SourceryCommand"])
    ],
    targets: [
        .plugin(
            name: "SourceryCommand",
            capability: .command(
                intent: .custom(verb: "sourcery-code-generation", description: "Generates Swift files from a given set of inputs"),
                permissions: [.writeToPackageDirectory(reason: "Need access to the package directory to generate files")]
            ),
            dependencies: ["Sourcery"]
        ),
        .binaryTarget(
            name: "Sourcery",
            path: "Sourcery.artifactbundle"
        )
    ]
)
