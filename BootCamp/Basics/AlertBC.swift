//
//  AlertBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-20.
//

import SwiftUI

struct AlertBC: View {
    @State var showAlert: Bool = false
    @State var bgColor: Color = .yellow
    
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            bgColor
                .ignoresSafeArea()
            VStack {
                Button("Show Alert 1") {
                    alertType = .success
//                    alertTitle = "Error uploading files."
//                    alertMessage = "Video could not be uploaded."
                    showAlert.toggle()
                }
                
                Button("Show Alert 2") {
                    alertType = .error
//                    alertTitle = "Error downloading files."
//                    alertMessage = "Internal server error."
                    showAlert.toggle()
                }
            }
        }
        .alert(isPresented: $showAlert) {
            getAlert()
        }
        
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
            
        case .success:
            return Alert(title: Text("There was an Error"),
                         message: Text("Something went wrong"),
                         primaryButton: .destructive(Text("Delete"), action: {
                       bgColor = .green
                   }),
                         secondaryButton: .cancel())
        case .error:
            return Alert(title: Text("There was an Error"),
                          message: Text("Something went wrong"),
                          dismissButton: .default(Text("OK")))
        default:
            return Alert(title: Text("Error"))
        }
        // method 1
        //            Alert(title: Text("There was an Error"))
//        var alert = Alert(title: Text("There was an Error"),
//                          message: Text("Something went wrong"),
//                          primaryButton: .destructive(Text("Delete"), action: {
//                        bgColor = .green
//                    }),
//                          secondaryButton: .cancel())
//
        // Method 2
//        alert = Alert(title: Text(alertTitle),
//                      message: Text(alertMessage),
//                      dismissButton: .default(Text("OK")))
//
//        return alert
    }
}

struct AlertBC_Previews: PreviewProvider {
    static var previews: some View {
        AlertBC()
    }
}
