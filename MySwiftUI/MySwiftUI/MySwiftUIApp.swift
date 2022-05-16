//
//  MySwiftUIApp.swift
//  MySwiftUI
//
//  Created by difine on 2022/05/16.
//

import SwiftUI

@main
struct MySwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
