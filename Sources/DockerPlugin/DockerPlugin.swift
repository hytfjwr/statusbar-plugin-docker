import StatusBarKit

@MainActor
public struct DockerPlugin: StatusBarPlugin {
    public let manifest = PluginManifest(
        id: "com.statusbar.docker",
        name: "Docker"
    )

    public let widgets: [any StatusBarWidget]

    public init() {
        widgets = [DockerWidget()]
    }
}

// MARK: - Plugin Factory

@_cdecl("createStatusBarPlugin")
public func createStatusBarPlugin() -> UnsafeMutableRawPointer {
    let box = PluginBox { DockerPlugin() }
    return Unmanaged.passRetained(box).toOpaque()
}
