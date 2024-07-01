import SwiftUI

private struct ToolbeltEnvironmentKey: EnvironmentKey {
    static let defaultValue = false
}

public extension EnvironmentValues {
    var toolbelt: Bool {
        get {
            self[ToolbeltEnvironmentKey.self]
        }
        set {
            self[ToolbeltEnvironmentKey.self] = newValue
        }
    }
}

public extension View {
    @inlinable
    func toolbelt(_ isEnabled: Bool) -> some View {
        #if USE_TOOLBELT
            environment(\.toolbelt, isEnabled)
        #else
            self
        #endif
    }
}
