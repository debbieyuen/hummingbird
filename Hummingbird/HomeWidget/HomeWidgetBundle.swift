//
//  HomeWidgetBundle.swift
//  HomeWidget
//
//  Created by Debbie Yuen on 5/28/23.
//

import WidgetKit
import SwiftUI

@main
struct HomeWidgetBundle: WidgetBundle {
    var body: some Widget {
        HomeWidget()
        HomeWidgetLiveActivity()
    }
}
