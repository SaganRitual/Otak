// We are a way for the cosmos to know itself. -- C. Sagan

import Foundation

class SpinnerSettings: ObservableObject {
    @Published var showCenters = true
    @Published var showJoints = true
    @Published var showPen = true
    @Published var showRadius = true
    @Published var showRing = true
}
