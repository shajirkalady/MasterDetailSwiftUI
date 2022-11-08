//
//  DetailView.swift
//  MasterDetailSwiftUI
//
//  Created by Shajir Kalady on 11/8/22.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var data: ListData
    var item: Item
    
    var itemIndex: Int {
        data.items.firstIndex(where: { $0.id == item.id })!
    }
    
    var body: some View {
        VStack {
            Text("Detail View - \(item.name)")
            Text("Count - \(item.count)")
            Button(action: {
                data.items[itemIndex].count += 1
            }, label: {
                Text("Update count")
            })
            .padding(10)
        }
    }
}

struct DetailView_Preview: PreviewProvider {
    static var previews: some View {
        var listData = ListData()

        DetailView(item: listData.items.first!)
            .environmentObject(listData)
    }
}

