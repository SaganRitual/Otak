// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct SpriteLayerScrollView: View {
    var body: some View {
        HStack {
            ScrollView {
                ForEach(0..<2) { ix in
                    SpriteLayerView()
                }
            }
        }
    }
}

struct SpriteLayerScrollview_Previews: PreviewProvider {
    static var previews: some View {
        SpriteLayerScrollView()
    }
}
