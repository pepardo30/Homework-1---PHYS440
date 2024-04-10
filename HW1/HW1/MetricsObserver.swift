import Foundation

/// A protocol for objects that wish to observe changes in metrics.
protocol MetricsObserver {
    func metricDidChange()
}

