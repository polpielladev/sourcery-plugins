import PackagePlugin
import Foundation

@main
struct SourceryCommand: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let configFilePath = context.package.directory.appending(subpath: ".sourcery.yml").string
        guard FileManager.default.fileExists(atPath: configFilePath) else {
            Diagnostics.error("Could not find config at: \(configFilePath)")
            return
        }
        
        let sourceryExecutable = try context.tool(named: "sourcery")
        let sourceryURL = URL(fileURLWithPath: sourceryExecutable.path.string)
        
        let process = Process()
        process.executableURL = sourceryURL
        process.arguments = [
            "--disableCache"
        ]
        
        try process.run()
        process.waitUntilExit()
    }
}
