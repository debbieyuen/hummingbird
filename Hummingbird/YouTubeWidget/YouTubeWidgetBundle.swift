//
//  YouTubeWidgetBundle.swift
//  YouTubeWidget
//
//  Created by Debbie Yuen on 5/28/23.
//

import WidgetKit
import SwiftUI

@main
struct YouTubeWidgetBundle: WidgetBundle {
    var body: some Widget {
        YouTubeWidget()
        YouTubeWidgetLiveActivity()
    }
}
