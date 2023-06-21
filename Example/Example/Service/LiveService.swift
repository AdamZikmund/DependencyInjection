import Foundation

class LiveService: Service {
    func getVehicles() async throws -> [Vehicle] {
        try await Task.sleep(for: .seconds(1))
        return [
            .init(name: "Fabia", brand: .skoda),
            .init(name: "V40", brand: .volvo),
            .init(name: "911 Turbo S", brand: .porsche)
        ]
    }
}
