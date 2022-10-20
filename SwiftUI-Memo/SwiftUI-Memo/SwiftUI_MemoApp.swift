//
//  SwiftUI_MemoApp.swift
//  SwiftUI-Memo
//
//  Created by brad on 2022/10/20.
//

import SwiftUI

@main
struct SwiftUI_MemoApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
