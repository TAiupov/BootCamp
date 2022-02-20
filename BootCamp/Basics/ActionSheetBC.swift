//
//  ActionSheetBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-02-20.
//

import SwiftUI

struct ActionSheetBC: View {
    @State private var showActionSheet: Bool = false
    @State private var actionSheetOption: ActionSheetOptions = .otherPost
    enum ActionSheetOptions {
        case myPost
        case otherPost
    }
    var body: some View {
        VStack {
            HStack {
                
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
//                Button("Click me") {
//                    showActionSheet.toggle()
//                }
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)

                
                
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog("Title of the Dialog", isPresented: $showActionSheet) {
            VStack {
                Button("Unsubscribe") {}
                Button("Try again") {}
                Button("Delete", role: .destructive, action: {})
            }
            
    }
    }
}

struct ActionSheetBC_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBC()
    }
}
