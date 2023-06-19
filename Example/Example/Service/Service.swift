import Foundation
import DependencyInjection

protocol Service {
    func getCars() async throws -> [Car]
}
