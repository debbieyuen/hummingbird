//
//  CameraWidgetBundle.swift
//  CameraWidget
//
//  Created by Debbie Yuen on 5/28/23.
//

import WidgetKit
import SwiftUI

@main
struct CameraWidgetBundle: WidgetBundle {
    var body: some Widget {
        CameraWidget()
        CameraWidgetLiveActivity()
    }
}
