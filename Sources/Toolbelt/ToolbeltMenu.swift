import SwiftUI

public struct ToolbeltMenu<Content: View>: View {
    @ViewBuilder private let content: () -> Content

    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        ToolbeltReader.enabled {
            Menu(content: content) {
                ToolbeltEmblem()
            }
        }
    }
}

#Preview {
    ToolbeltMenu {
        Button("Alpha", action: {})
        Button("Beta", action: {})
    }
    .toolbelt(true)
}
