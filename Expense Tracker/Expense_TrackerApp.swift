//
//  Expense_TrackerApp.swift
//  Expense Tracker
//
//  Created by Shreenidhi Venkatesh on 10/12/23.
//

import SwiftUI
import WidgetKit

@main
struct Expense_TrackerApp: App {
    @Environment(\.scenePhase) private var scene
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onChange(of: scene, { oldValue, newValue in
                    if newValue == .background {
                        WidgetCenter.shared.reloadAllTimelines()
                    }
                })
        }
        .modelContainer(for: [Transaction.self])
    }
}
