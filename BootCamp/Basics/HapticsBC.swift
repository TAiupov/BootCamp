//
//  HepticsBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-21.
//

import SwiftUI

class HapticManager {
    
    static let instance = HapticManager() // Singleton
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
}

struct HapticsBC: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Success") { HapticManager.instance.notification(type: .success) }
            Button("Warning") { HapticManager.instance.notification(type: .warning) }
            Button("Error") { HapticManager.instance.notification(type: .error) }
            Divider()
            Button("Light") { HapticManager.instance.impact(style: .light) }
            Button("Medium") { HapticManager.instance.impact(style: .medium) }
            Button("Rigid") { HapticManager.instance.impact(style: .rigid) }
            Button("Soft") { HapticManager.instance.impact(style: .soft) }
            Button("Heavy") { HapticManager.instance.impact(style: .heavy) }
           
            
        }
    }
}

struct HapticsBC_Previews: PreviewProvider {
    static var previews: some View {
        HapticsBC()
    }
}
