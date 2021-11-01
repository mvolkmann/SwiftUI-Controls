import SwiftUI

struct ContentView: View {
    @State var pressed = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Button 1") {
                    //pressed.toggle()
                    pressed = true
                }
                // Works in Simulator, but not in Preview.
                .alert("My Title", isPresented: $pressed) {
                    // Add this to do something
                    // when the OK button is pressed.
                    // Otherwise a default OK button
                    // that does nothing is provided.
                    /*
                    Button("OK", role: .cancel) {
                        print("dismissed alert")
                    }
                    */
                } message: {
                    Text("My Message")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
