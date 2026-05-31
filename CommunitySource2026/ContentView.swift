//
//  ContentView.swift
//  CommunitySource2026
//
//  Created by Matt Heaney on 31/05/2026.
//

import SwiftUI

struct ContentView: View {
    private let pageOptions = CommunityContent.pageOptions

    @State private var selectedPageID = CommunityPage.allPageID

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                PageSelector(
                    pages: pageOptions,
                    selectedPageID: $selectedPageID
                )

                TabView(selection: $selectedPageID) {
                    ForEach(pageOptions) { page in
                        ItemListView(page: page)
                            .tag(page.id)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
            }
            .navigationTitle("Community Source")
            .background(Color(.systemGroupedBackground))
        }
    }
}

#Preview {
    ContentView()
}
