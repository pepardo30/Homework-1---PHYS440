import Foundation

class SphereMetricsLogger: SphereObserver {
    func sphereDidUpdate(sphere: Sphere) {
        Task {
            let volume = await calculateVolumeAsync(sphere: sphere)
            let surfaceArea = await calculateSurfaceAreaAsync(sphere: sphere)
            let boundingBox = BoundingBox(sphere: sphere)
            let bboxVolume = boundingBox.volume()
            let bboxSurfaceArea = boundingBox.surfaceArea()
            
            print("Sphere Updated - Radius: \(sphere.radius), Volume: \(volume), Surface Area: \(surfaceArea)")
            print("Bounding Box - Volume: \(bboxVolume), Surface Area: \(bboxSurfaceArea)")
        }
    }

    private func calculateVolumeAsync(sphere: Sphere) async -> Double {
        (4.0 / 3.0) * .pi * pow(sphere.radius, 3)
    }

    private func calculateSurfaceAreaAsync(sphere: Sphere) async -> Double {
        4 * .pi * pow(sphere.radius, 2)
    }
}

