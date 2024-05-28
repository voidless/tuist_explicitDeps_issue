import SwiftUI
import GRDB

public struct ContentView: View {

    private var dbReader: DatabaseReader?

    public init() {}

    public var body: some View {
        Text("Hello, World!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
