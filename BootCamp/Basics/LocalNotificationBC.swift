//
//  LocalNotificationBC.swift
//  BootCamp
//
//  Created by Тагир Аюпов on 2021-04-21.
//

import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager {
    
    static let instance = NotificationManager() // Singleton
    
    func requestAuth() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { (success, error) in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print(success)
            }
        }
    }
    
    func scheduleNotifications() {
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification."
        content.subtitle = "This is easy"
        content.sound = .default
        content.badge = 1
        
        // - Time
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0,
//                                                        repeats: false)
        
        // - Calendar
//        var dateComponents = DateComponents()
//        //military time
//
//        dateComponents.hour = 20
//        dateComponents.minute = 26
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // location
        
        let coordinates = CLLocationCoordinate2D(latitude: 40,
                                                 longitude: 40)
        
        let region = CLCircularRegion(center: coordinates,
                                      radius: 100,
                                      identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = false
        
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString,
                                            content: content,
                                            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    func cancelNotifications() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

struct LocalNotificationBC: View {
    var body: some View {
        VStack(spacing: 30) {
            Button("Request permission") {
                NotificationManager.instance.requestAuth()
            }
            Button("Schedule notification") {
                NotificationManager.instance.scheduleNotifications()
            }
            Button("Cancel notification") {
                NotificationManager.instance.cancelNotifications()
            }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotificationBC_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationBC()
    }
}
