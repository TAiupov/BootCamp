//
//  DatePickerBC.swift
//  BootCamp
//
//  Created by Tagir Aiupov on 2022-03-12.
//

import SwiftUI

struct DatePickerBC: View {
    @State private var date: Date = .now
    let startDate = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected date is:")
            Text(dateFormatter.string(from: date))
                .font(.headline)
            
//        DatePicker("Select Date",
//                   selection: $date,
//                   displayedComponents: [.date])
        
        DatePicker("Select date",
                   selection: $date, in: startDate...endDate,
                   displayedComponents: [.date])
        .padding()
        .foregroundColor(.red)
        .accentColor(.red)
        .datePickerStyle(
            CompactDatePickerStyle()
//            GraphicalDatePickerStyle()
//            WheelDatePickerStyle()
        )
    }
    }
}

struct DatePickerBC_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBC()
    }
}
