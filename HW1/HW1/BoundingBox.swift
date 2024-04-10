import Foundation

class BoundingBox {
    var sphere: Sphere

    init(sphere: Sphere) {
        self.sphere = sphere
    }

    func volume() -> Double {
        let side = sphere.radius * 2
        return pow(side, 3)
    }

    func surfaceArea() -> Double {
        let side = sphere.radius * 2
        return 6 * pow(side, 2)
    }
}

