import Foundation

struct Car: Identifiable, Equatable {
    // MARK: - Properties
    let id = UUID()
    let name: String
    let brand: CarBrand

    // MARK: - Lifecycle
    init(name: String, brand: CarBrand) {
        self.name = name
        self.brand = brand
    }
}
