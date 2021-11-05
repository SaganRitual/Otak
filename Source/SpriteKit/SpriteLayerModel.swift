// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit
import SwiftUI

class SpriteLayerModelLibrary: ObservableObject {
    @Published var layers = [SpriteLayerModel]()

    var count: Int { layers.count }

    func addLayer() {
        layers.append(SpriteLayerModel())
    }

    func getLayer(_ ix: Int) -> SpriteLayerModel {
        if ix >= count { layers.append(SpriteLayerModel()) }
        return layers[ix]
    }
}

class SpriteLayerModel: ObservableObject {
    @Published var showRing = false
}
