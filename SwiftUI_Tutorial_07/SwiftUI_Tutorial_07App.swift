//
//  SwiftUI_Tutorial_07App.swift
//  SwiftUI_Tutorial_07
//
//  Created by SeongMinK on 2021/12/21.
//

import SwiftUI

@main
struct SwiftUI_Tutorial_07App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(MyViewModel())
        }
    }
}
