//
//  MasterDetailSwiftUIApp.swift
//  MasterDetailSwiftUI
//
//  Created by Shajir Kalady on 11/7/22.
//

import SwiftUI

@main
struct MasterDetailSwiftUIApp: App {
    @StateObject private var listData = ListData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(listData)
        }
    }
}
