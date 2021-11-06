// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit
import SwiftUI

class SpriteLayer: ObservableObject {
    // Notice that 'showingRing' is kind of a secondary variable;
    // the real source of truth is the alpha in an SKSpriteNode that's
    // attached to the SKScene, totally outside SwiftUI's knowledge
    // as far as I can tell.
    @Published var showingRingSprite: Bool = true
}
