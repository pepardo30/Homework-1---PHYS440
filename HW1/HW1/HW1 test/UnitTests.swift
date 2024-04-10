import XCTest
@testable import HW1

class SphereTests: XCTestCase {
    
    func testSphereVolume() {
        let sphere = Sphere(radius: 5)
        XCTAssertEqual(sphere.calculateVolume(), (4.0/3.0) * .pi * pow(5, 3), accuracy: 0.001)
    }
    
    func testSphereSurfaceArea() {
        let sphere = Sphere(radius: 5)
        XCTAssertEqual(sphere.calculateSurfaceArea(), 4 * .pi * pow(5, 2), accuracy: 0.001)
    }
}

class BoundingBoxTests: XCTestCase {
    
    func testBoundingBoxVolume() {
        let sphere = Sphere(radius: 5)
        let boundingBox = BoundingBox(sphere: sphere)
        XCTAssertEqual(boundingBox.calculateVolume(), pow(10, 3), accuracy: 0.001)
    }
    
    func testBoundingBoxSurfaceArea() {
        let sphere = Sphere(radius: 5)
        let boundingBox = BoundingBox(sphere: sphere)
        XCTAssertEqual(boundingBox.calculateSurfaceArea(), 6 * pow(10, 2), accuracy: 0.001)
    }
}

