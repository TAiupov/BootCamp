//
//  DocumentationBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-04-09.
//

import SwiftUI

struct DocumentationBC: View {
    
    // MARK: PROPERTIES
    
    @State private var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State private var showAlert: Bool = false
    
    // MARK: BODY
    
    // Working copy - things to do:
    /*
     1. Fix title
     2. Fix Alert
     3. Fix UI
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documantation BC")
                .toolbar {
                    Button("ALERT") {
                        showAlert.toggle()
                    }
                }
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
            }
            }
        } // END: NAV
    }
    /// This is the foreground layer holding a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLL
            Text("Hello, World!")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
                
            }
        } // END: SCROLL
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. This alert will a title based on the text parameter, but it will NOT have a message.
    ///
    /// ```
    /// getAlert(text: "Hello!") -> Alert(title: Text("Hi!"))
    /// ```
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: The title for the alert.
    /// - Returns: Alert with the title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW

struct DocumentationBC_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBC()
    }
}
