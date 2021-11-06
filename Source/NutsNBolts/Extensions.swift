// We are a way for the cosmos to know itself. -- C. Sagan

import Foundation

extension Double {
    var asPropertyDisplayText: String {
        String(format: "%.3f", self)
    }

    static let tau = 2 * Double.pi
}

extension CGFloat {
    static let tau = 2 * CGFloat.pi
}
