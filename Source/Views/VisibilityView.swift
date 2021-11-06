// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct VisibilityView: View {
    @StateObject var layer: SpriteLayer

    var body: some View {
        VStack {
            Text("Show / Hide")
                .font(.title3)
                .foregroundColor(Color(NSColor.windowFrameTextColor))
                .padding(.top, -15)
                .padding(.bottom, 5)

            HStack {
                VStack(alignment: .leading) {
                    VisibilityControlView(checked: $layer.showingRingSprite, label: "Ring")
                    VisibilityControlView(checked: $layer.showingCentersSprite, label: "Centers")
                }
                Spacer()
                VStack(alignment: .leading) {
                    VisibilityControlView(checked: $layer.showingRadiusSprite, label: "Radius")
                    VisibilityControlView(checked: $layer.showingPenSprite, label: "Pen")
                }
            }
        }
        .padding([.leading, .trailing], 25)
        .padding(.top, 25)
    }
}

struct VisibilityView_Previews: PreviewProvider {
    static var previews: some View {
        VisibilityView(layer: SpriteLayer())
    }
}
