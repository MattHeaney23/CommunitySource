//
//  CommunityPage.swift
//  CommunitySource2026
//

import Foundation

struct CommunityPage: Identifiable {
    let id: String
    let name: String
    let items: [CommunityItem]

    init(id: String? = nil, name: String, items: [CommunityItem]) {
        self.id = id ?? name.lowercased().replacingOccurrences(of: " ", with: "-")
        self.name = name
        self.items = items
    }
}

extension CommunityPage {
    static let allPageID = "all"
}
