//
//  ScheduleWidgetBundle.swift
//  ScheduleWidget
//
//  Created by Debbie Yuen on 2/19/23.
//

import WidgetKit
import SwiftUI

@main
struct ScheduleWidgetBundle: WidgetBundle {
    var body: some Widget {
        ScheduleWidget()
        ScheduleWidgetLiveActivity()
    }
}
