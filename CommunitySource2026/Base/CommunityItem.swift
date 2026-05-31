//
//  CommunityItem.swift
//  CommunitySource2026
//

import SwiftUI

struct CommunityItem: Identifiable {
    let id: String
    let title: String
    let summary: String
    let symbolName: String
    private let destinationBuilder: () -> AnyView

    init<Destination: View>(
        id: String? = nil,
        title: String,
        summary: String,
        symbolName: String,
        @ViewBuilder destination: @escaping () -> Destination
    ) {
        self.id = id ?? title.lowercased().replacingOccurrences(of: " ", with: "-")
        self.title = title
        self.summary = summary
        self.symbolName = symbolName
        self.destinationBuilder = { AnyView(destination()) }
    }

    func destination() -> AnyView {
        destinationBuilder()
    }
}
