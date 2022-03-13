//
//  StepperBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct StepperBC: View {
    @State private var stepperValue: Int = 10
    @State private var withIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + withIncrement, height: 100)
            
            
            Stepper("Stepper2") {
                // Increment
                incrementWidth(amount: 10)
            } onDecrement: {
                //Decrement
                incrementWidth(amount: -10)
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            withIncrement += amount
        }
    }
}

struct StepperBC_Previews: PreviewProvider {
    static var previews: some View {
        StepperBC()
    }
}
