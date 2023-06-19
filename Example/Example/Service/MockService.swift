import Foundation

class MockService: Service {
    func getCars() async throws -> [Car] {
        try await Task.sleep(for: .seconds(1))
        return [
            .init(name: "Superb", brand: .skoda),
            .init(name: "V60", brand: .volvo),
            .init(name: "911 GT3 RS", brand: .porsche)
        ]
    }
}
