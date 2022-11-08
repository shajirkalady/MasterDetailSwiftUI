//
//  ContentView.swift
//  MasterDetailSwiftUI
//
//  Created by Shajir Kalady on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: ListData

    var body: some View {
        NavigationView {
            MasterView()
                .environmentObject(data)
            DetailView(item: data.items.first!)
                .environmentObject(data)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ListData())
    }
}
