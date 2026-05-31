//
//  ItemListView.swift
//  CommunitySource2026
//

import SwiftUI

struct ItemListView: View {
    let page: CommunityPage

    var body: some View {
        List(page.items) { item in
            NavigationLink {
                item.destination()
            } label: {
                HStack(spacing: 12) {
                    Image(systemName: item.symbolName)
                        .font(.title3)
                        .frame(width: 36, height: 36)
                        .background(Color.accentColor.opacity(0.12), in: RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(Color.accentColor)

                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.title)
                            .font(.headline)
                            .foregroundStyle(.primary)
                        Text(item.summary)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .lineLimit(2)
                    }
                }
                .padding(.vertical, 6)
            }
        }
        .listStyle(.insetGrouped)
        .overlay {
            if page.items.isEmpty {
                ContentUnavailableView(
                    "No Items",
                    systemImage: "tray",
                    description: Text("Add items to this page to show them here.")
                )
            }
        }
    }
}
