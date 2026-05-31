//
//  PageSelector.swift
//  CommunitySource2026
//

import SwiftUI

struct PageSelector: View {
    let pages: [CommunityPage]
    @Binding var selectedPageID: String

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(pages) { page in
                        Button {
                            withAnimation(.snappy) {
                                selectedPageID = page.id
                                proxy.scrollTo(page.id, anchor: .center)
                            }
                        } label: {
                            Text(page.name)
                                .font(.subheadline.weight(.semibold))
                                .lineLimit(1)
                                .padding(.horizontal, 14)
                                .padding(.vertical, 8)
                                .background(
                                    selectedPageID == page.id
                                    ? Color.accentColor
                                    : Color(.secondarySystemGroupedBackground),
                                    in: Capsule()
                                )
                                .foregroundStyle(selectedPageID == page.id ? .white : .primary)
                        }
                        .buttonStyle(.plain)
                        .id(page.id)
                    }
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
            }
            .background(Color(.systemGroupedBackground))
            .onChange(of: selectedPageID) { _, newValue in
                withAnimation(.snappy) {
                    proxy.scrollTo(newValue, anchor: .center)
                }
            }
        }
    }
}
