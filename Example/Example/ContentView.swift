import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let service: Service
    @State private var cars: [Car] = []

    // MARK: - Body
    var body: some View {
        VStack {
            ForEach(cars) { car in
                VStack {
                    Text(car.name)
                    Text(car.brand.rawValue)
                    Divider()
                }
            }
        }
        .animation(.default, value: cars)
        .padding()
        .task {
            cars = (try? await service.getCars()) ?? []
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
