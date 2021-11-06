// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct SpriteLayerView: View {
    @StateObject var layer = SpriteLayer()

    var showingRingSprite: Bool { layer.showingRingSprite }

    var body: some View {
        Image(systemName: "capsule.fill")
    }
}

struct SpriteLayerView_Previews: PreviewProvider {
    static var previews: some View {
        SpriteLayerView(layer: SpriteLayer())
    }
}
