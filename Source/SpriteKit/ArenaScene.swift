// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit

class ArenaScene: SKScene, SKSceneDelegate, ObservableObject {
    override init(size: CGSize) {
        super.init(size: size)

        self.scaleMode = .aspectFill

        print("ArenaScene \(size)")

        anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMove(to view: SKView) {
        view.showsFPS = true
        view.showsNodeCount = true
    }
}
