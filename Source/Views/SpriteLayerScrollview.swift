// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct SpriteLayerScrollview: View {
    @StateObject var layers = SpriteLayerModelLibrary()

    var body: some View {
        HStack {
            ScrollView {
                ForEach(0..<layers.count) { ix in
                    SpriteLayerView(model: layers.getLayer(ix))
                }
            }
        }
    }
}

struct SpriteLayerScrollview_Previews: PreviewProvider {
    static var previews: some View {
        SpriteLayerScrollview()
    }
}
