//
//  BookWidgetBundle.swift
//  BookWidget
//
//  Created by Debbie Yuen on 5/28/23.
//

import WidgetKit
import SwiftUI

@main
struct BookWidgetBundle: WidgetBundle {
    var body: some Widget {
        BookWidget()
        BookWidgetLiveActivity()
    }
}
