//
//  CallWidgetBundle.swift
//  CallWidget
//
//  Created by Debbie Yuen on 5/28/23.
//

import WidgetKit
import SwiftUI

@main
struct CallWidgetBundle: WidgetBundle {
    var body: some Widget {
        CallWidget()
        CallWidgetLiveActivity()
    }
}
