//
//  MasterView.swift
//  MasterDetailSwiftUI
//
//  Created by Shajir Kalady on 11/8/22.
//

import SwiftUI

struct MasterView: View {
    @EnvironmentObject var data: ListData
    
    var body: some View {
        List(data.items) { item in
            NavigationLink(destination: DetailView(item: item)) {
                Text("Item \(item.name)")
            }
        }
        .navigationTitle("MasterDetailSwiftUI")
    }
}

struct MasterView_Preview: PreviewProvider {
    static var previews: some View {
        MasterView()
            .environmentObject(ListData())
    }
}
