//
//  SwiftUIMacOSCalculatorApp.swift
//  SwiftUIMacOSCalculator
//
//  Created by Angelos Staboulis on 30/11/24.
//

import SwiftUI

@main
struct SwiftUIMacOSCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(txtReadout: "", formula: "", parser: .init(), result: 0).frame(width: 520, height: 250)
                .windowResizeBehavior(.disabled)
        }.windowResizability(.contentSize)
            
    }
}
