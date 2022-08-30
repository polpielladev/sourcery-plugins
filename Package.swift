// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SourceryPlugins",
    products: [
    ],
    targets: [
        .plugin(
            name: "SourceryCommand",
            capability: .command(
                intent: .custom(verb: "sourcery-code-generation", description: "Generates Swift files from a given set of inputs")
            )
        )
    ]
)
