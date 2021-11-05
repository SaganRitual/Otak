// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct SpriteLayerView: View {
    @ObservedObject var model: SpriteLayerModel

    var body: some View {
        Text("Hello, World from SpriteLayerView body!")
    }
}

struct SpriteLayerView_Previews: PreviewProvider {
    static var previews: some View {
        SpriteLayerView(model: SpriteLayerModel())
    }
}
