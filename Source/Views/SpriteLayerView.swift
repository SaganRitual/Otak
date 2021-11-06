// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct SpriteLayerView: View {
    @StateObject var layer = SpriteLayer()

    var body: some View {
        VisibilityView(layer: layer)
            .frame(width: 300)
            .frame(maxHeight: .infinity)
    }
}

struct SpriteLayerView_Previews: PreviewProvider {
    static var previews: some View {
        SpriteLayerView(layer: SpriteLayer())
    }
}
