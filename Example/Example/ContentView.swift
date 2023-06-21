import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let service: Service
    @State private var vehicles: [Vehicle] = []

    // MARK: - Body
    var body: some View {
        VStack {
            ForEach(vehicles) { vehicle in
                VStack {
                    Text(vehicle.name)
                    Text(vehicle.brand.rawValue)
                    Divider()
                }
            }
        }
        .animation(.default, value: vehicles)
        .padding()
        .task {
            vehicles = (try? await service.getVehicles()) ?? []
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            service: MockService()
        )
    }
}
