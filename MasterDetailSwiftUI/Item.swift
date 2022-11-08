//
//  Item.swift
//  MasterDetailSwiftUI
//
//  Created by Shajir Kalady on 11/8/22.
//

import Foundation

struct Item: Identifiable {
    var id: UUID
    var name: String
    var count: Int
}

final class ListData: ObservableObject {
    @Published var items: [Item] = [Item(id: UUID(), name: "One", count: 0),
                                    Item(id: UUID(), name: "two", count: 0),
                                    Item(id: UUID(), name: "three", count: 0)]
}
