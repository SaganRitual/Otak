// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit
import SwiftUI

struct ContentView: View {
    init() {
        print("ContentView says screen visible is CGSize(width: \(ContentView.getScreenDimensions()))")
    }

    static func getScreenDimensions() -> CGSize {
        guard let mainScreen = NSScreen.main else {
            preconditionFailure("You're gonna have a bad day")
        }

        print("ContentView says screen visible is CGSize(width: \(mainScreen.visibleFrame.size))")
        return mainScreen.visibleFrame.size
    }

    var body: some View {
        HStack {
            NavigationView()

            SpriteView(scene: ArenaScene())
                .padding(5)
                .frame(
                    minWidth: 400, idealWidth: nil,
                    maxWidth: ContentView.getScreenDimensions().height,
                    minHeight: 400, idealHeight: nil,
                    maxHeight: ContentView.getScreenDimensions().height,
                    alignment: .leading
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
