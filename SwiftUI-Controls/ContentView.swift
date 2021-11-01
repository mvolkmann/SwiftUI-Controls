import SwiftUI

struct ContentView: View {
    @State var dogCount = 0
    @State var pressed = false
    @State var tooManyDogs = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Stepper(
                        "# of Dogs",
                        value: $dogCount, in: 0...10
                    ) { v in
                        print("v =", v)
                        tooManyDogs = dogCount > 2
                    }
                    Text(String(dogCount))
                }
                
                Button("Button 1") {
                    pressed = true
                }
                /*
                // This works in the Simulator, but not in Preview.
                // The alert methods can be chained onto any view,
                // not just Buttons.
                .alert(
                    "My Title",
                    isPresented: $pressed,
                    actions: {
                        // Define buttons that appear at
                        // the bottom of the alert here.
                        // These can have associated actions.
                        //
                        // When there are more than two buttons,
                        // they are stacked vertically.
                        // Otherwise they are placed on one row.
                        //
                        // If no buttons are provided, a default "OK" button
                        // with a role of .cancel is provided.
                        // Otherwise a default "Cancel" button is added.
                        //
                        // To add custom buttons and
                        // not get a default "Cancel" button, one of the
                        // custom buttons must have a role of .cancel.
                        
                        /*
                        Button("OK", role: .cancel) {
                            print("dismissed alert")
                        }
                        */
                        
                        Button("Delete", role: .destructive) {
                            print("Delete was pressed.")
                        }
                    },
                    message: {
                        // Can only have a single Text view here,
                        // not any kind of View!
                        Text("My Message")
                    }
                )
                */
            }
            .alert(
                "My Title",
                isPresented: $pressed,
                actions: {},
                message: {
                    Text("My Message")
                }
            )
            .alert(
                "Dog Alert",
                isPresented: $tooManyDogs,
                actions: {},
                message: {
                    // Can only have a single Text view here,
                    // not any kind of View!
                    Text("You have too many dogs!")
                }
            )
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
