# SourceryPlugins

Use [Sourcery](https://github.com/krzysztofzablocki/Sourcery) as a code generator in your project as a Swift package's command plugin.

See: [Blog post explaining how this works[(https://www.polpiella.dev/sourcery-swift-package-command-plugin/)

## Usage

### Command line

To verify the plugin can be found by SwiftPM, use:

    $ swift package --list

To run the code generator, you need to allow changes to the project with the `--allow-writing-to-package-directory` flag:

    $ swift package --allow-writing-to-package-directory sourcery-code-generation
    
### Xcode

Inside a project/package that uses this command plugin, right-click the project and select "SourceryCommand" from the "SourceryPlugins" menu group.

(Requires Xcode 14)
