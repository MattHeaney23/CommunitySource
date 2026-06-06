//
//  AboutCommunitySource.swift
//  CommunitySource2026
//

import SwiftUI

GitHub rule check

struct AboutCommunitySource: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("About CommunitySource")
                        .font(.largeTitle.weight(.bold))

                    Text("A public space for experimenting with new features announced at WWDC 2026.")
                        .font(.title3)
                        .foregroundStyle(.secondary)
                }

                VStack(alignment: .leading, spacing: 12) {
                    AboutSection(
                        title: "Independent Experiments",
                        body: "Each page should work as a complete, self-contained example. A feature can stand on its own, link to supporting pages, or demonstrate how new Apple APIs behave in a real app."
                    )

                    AboutSection(
                        title: "Open Contributions",
                        body: "Contributors can add a new feature, create a new category, or build on someone else's work. Keep additions focused so people can understand, test, and improve them independently."
                    )

                    AboutSection(
                        title: "Shared Direction",
                        body: "The goal is to make WWDC 2026 ideas easier to explore together: small working pages, clear ownership, and examples that can grow without blocking other contributors."
                    )
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(24)
        }
        .navigationTitle("About CommunitySource")
        .navigationBarTitleDisplayMode(.inline)
    }
}

private struct AboutSection: View {
    let title: String
    let copy: String

    init(title: String, body: String) {
        self.title = title
        self.copy = body
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.headline)

            Text(copy)
                .font(.body)
                .foregroundStyle(.secondary)
                .lineSpacing(4)
        }
    }
}

#Preview {
    NavigationStack {
        AboutCommunitySource()
    }
}
