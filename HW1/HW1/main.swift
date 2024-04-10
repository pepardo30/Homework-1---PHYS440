import Foundation

// Set up the sphere and its logger
let exampleSphere = Sphere(radius: 5.0)
let logger = SphereMetricsLogger()
exampleSphere.addObserver(observer: logger)

// Simulate a change in radius
Task {
    print("Initial Sphere - Radius: 5.0, Volume: \(exampleSphere.volume()), Surface Area: \(exampleSphere.surfaceArea())")
    
    // Wait for 2 seconds to simulate some delay
    try await Task.sleep(nanoseconds: 2_000_000_000)
    
    // Update the sphere's radius
    exampleSphere.radius = 10.0
}

// Keep the program running to observe async changes
RunLoop.main.run()

