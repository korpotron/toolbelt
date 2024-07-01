import SwiftUI

public struct ToolbeltReader<Content: View>: View {
    private let content: (Bool) -> Content

    @Environment(\.toolbelt)
    private var toolbelt

    public init(@ViewBuilder content: @escaping (_ enabled: Bool) -> Content) {
        self.content = content
    }

    public var body: some View {
        content(toolbelt)
    }

    public static func enabled(content: @escaping () -> Content) -> ToolbeltReader<Content?> {
        .init { enabled in
            if enabled {
                content()
            }
        }
    }
}

struct ToolbeltReader_Preview: PreviewProvider {
    static var previews: some View {
        HStack {
            Text(verbatim: "Label")
        }
    }
}
