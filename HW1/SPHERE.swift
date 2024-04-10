import Foundation

class Sphere {
    var radius: Double {
        didSet {
            notifyObservers()
        }
    }
    private var observers = [SphereObserver]()

    init(radius: Double) {
        self.radius = radius
    }

    func addObserver(observer: SphereObserver) {
        observers.append(observer)
    }

    private func notifyObservers() {
        observers.forEach { $0.sphereDidUpdate(sphere: self) }
    }

    func volume() -> Double {
        return (4.0 / 3.0) * .pi * pow(radius, 3)
    }

    func surfaceArea() -> Double {
        return 4 * .pi * pow(radius, 2)
    }
}

