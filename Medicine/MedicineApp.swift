//
//  MedicineApp.swift
//  Medicine
//
//  Created by Jo W on 21/11/23.
//

import SwiftUI

@main
struct MedicineApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
