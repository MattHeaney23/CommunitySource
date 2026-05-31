//
//  CommunityContent.swift
//  CommunitySource2026
//

import SwiftUI

enum CommunityContent {
    static let pages: [CommunityPage] = [
        CommunityPage(
            name: "Example New Feature",
            items: [
                CommunityItem(
                    title: "About CommunitySource",
                    summary: "Learn what CommunitySource is and how this feature area will grow.",
                    symbolName: "info.circle"
                ) {
                    AboutCommunitySource()
                }
            ]
        )
    ]

    static var pageOptions: [CommunityPage] {
        [CommunityPage(id: CommunityPage.allPageID, name: "All", items: allItems)] + pages
    }

    private static var allItems: [CommunityItem] {
        pages.flatMap(\.items)
    }

}
