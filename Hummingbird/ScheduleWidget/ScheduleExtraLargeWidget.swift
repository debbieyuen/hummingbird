//
//  ScheduleExtraLargeWidget.swift
//  ScheduleWidgetExtension
//
//  Created by Debbie Yuen on 5/29/23.
//

import WidgetKit
import SwiftUI

struct ScheduleExtraLargeWidget: View {
    var entry: SimpleEntry
    
    var body: some View {
        GroupBox {
            Image(systemName: "calendar.badge.clock")
        } label: { Label ("My Schedule", systemImage: "calendar.badge.clock")}
            .widgetURL(URL(string: "Hummingbird://todo/1"))
    }
}
