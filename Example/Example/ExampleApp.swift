import SwiftUI
import DependencyInjection

@main
struct ExampleApp: App {
    // MARK: - Properties
    private let resolver: Resolver = {
        let container = Container()
        container.register(Service.self) { _ in
            LiveService()
        }
//        container.register(Service.self) { _ in
//            MockService()
//        }
        return container.resolver
    }()

    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            ContentView(service: resolver.resolve())
        }
    }
}
