import Foundation

struct Vehicle: Identifiable, Equatable {
    // MARK: - Properties
    let id = UUID()
    let name: String
    let brand: VehicleBrand

    // MARK: - Lifecycle
    init(name: String, brand: VehicleBrand) {
        self.name = name
        self.brand = brand
    }
}
