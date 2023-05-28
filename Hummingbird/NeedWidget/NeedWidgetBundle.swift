//
//  NeedWidgetBundle.swift
//  NeedWidget
//
//  Created by Debbie Yuen on 5/28/23.
//

import WidgetKit
import SwiftUI

@main
struct NeedWidgetBundle: WidgetBundle {
    var body: some Widget {
        NeedWidget()
        NeedWidgetLiveActivity()
    }
}
