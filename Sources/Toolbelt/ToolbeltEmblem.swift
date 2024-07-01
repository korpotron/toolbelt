import SwiftUI

public struct ToolbeltEmblem: View {
    public init() {}

    @Environment(\.isEnabled)
    private var isEnabled: Bool

    public var body: some View {
        Text(verbatim: "🛠️")
            .padding(5)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(5)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(isEnabled ? .gray : .gray.opacity(0.2), lineWidth: 1)
            }
            .opacity(isEnabled ? 1 : 0.5)
    }
}

#Preview {
    VStack {
        ToolbeltEmblem()
            .disabled(true)
        ToolbeltEmblem()
            .disabled(false)
    }
}
