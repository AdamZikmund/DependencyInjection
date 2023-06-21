import Foundation
import DependencyInjection

protocol Service {
    func getVehicles() async throws -> [Vehicle]
}
