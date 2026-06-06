# Community Source - WWDC26

Welcome to Community Source, an open-source playground for building features with Apple's newest frameworks, APIs, and technologies.

The goal is simple: create a shared space where the community can build, learn, and explore together.

Too often, exciting WWDC projects are created, demonstrated, and then forgotten. Community Source aims to give those ideas a home where they can continue to evolve through collaboration and contribution.

## What is Community Source?

Community Source is a community-driven repository of features built using Apple's latest technologies.

Think of it as a collection of mini-projects, features, and ideas living under one roof.

Anyone can create their own space within the repository to explore a new framework, test an idea, build a proof of concept, or showcase something they've learned. Your contribution doesn't need to become part of a larger product. It can simply be a feature that others can learn from, build upon, or use as inspiration.

The goal is to create a living collection of community-built features showcasing Apple's newest technologies.

## Requirements

To keep the project easy to navigate and maintain:

* Every feature should have its own dedicated area within the repository.
* Features should work independently wherever possible.
* Contributors should be free to build without impacting other features.

## Ways to Contribute

### Create a New Feature

Have an idea you'd like to explore? Create your own feature space and start building.

Whether it's a small proof of concept or a deep dive into a brand-new framework, Community Source is the place to share it.

### Build Upon Existing Features

See something interesting from another contributor? Expand it, improve it, connect it to your own feature, or use it as inspiration for something entirely new.

### Improve the Core Project

Community Source is intentionally lightweight. Help improve the underlying project structure, architecture, documentation, tooling, or developer experience so future contributors can build even more easily.

### Have an Idea?

Not every contribution starts with code. If you have an idea that could inspire others, open an issue and share it with the community. Your idea may become the next feature someone decides to build.

## How to Contribute

1. Fork the repository.
2. Create your feature space or make your changes.
3. Commit your work.
4. Open a Pull Request.
5. Collaborate with the community through feedback and review.

We welcome contributions of all sizes, from new features and proofs of concept to bug fixes, documentation improvements, and project enhancements.

## Adding a New Category of Features

Categories live under `CommunitySource2026/Content`.

To add a new category, create a new folder inside `Content` using the category name, for example:

`Content/FoundationModels`

Each category should contain:

* `BasePage` for the category's list/page registration.
* `Features` for the individual feature pages in that category.

A typical category structure should look like:

```text
Content/FoundationModels/
├── BasePage/
│   └── FoundationModelsContent.swift
└── Features/
    └── MyNewFeature.swift
```

The category's `BasePage` file should define the `CommunityPage` for that category and list the `CommunityItem`s that belong to it.

Each category should be able to stand on its own, so avoid coupling it tightly to unrelated categories unless the connection is intentional and clearly useful.

## Adding a New Feature in a Category

To add a new feature, create a new SwiftUI view inside the category's `Features` folder.

For example:

`Content/FoundationModels/Features/PromptExperimentView.swift`

Then add a new `CommunityItem` to that category's `BasePage` file:

```swift
CommunityItem(
    title: "Prompt Experiment",
    summary: "A small experiment exploring structured generation.",
    symbolName: "sparkles"
) {
    PromptExperimentView()
}
```

Each feature should:

* Have its own SwiftUI view.
* Work independently wherever possible.

If you are building on someone else's feature, keep your changes clear and explain the connection in your Pull Request.

## Community Maintained

Community Source is built by the community, for the community.

One of the best ways to contribute is by helping others:

* Review open Pull Requests.
* Provide constructive feedback.
* Test community contributions.
* Share ideas and suggestions.
* Encourage and support fellow builders.

Every review, comment, and discussion helps make the project better.

## Code of Conduct

Community Source is intended to be a welcoming, supportive, and creative environment for everyone.

We welcome contributors of all experience levels, backgrounds, and perspectives.

Please:

* Be respectful and constructive.
* Support and encourage fellow contributors.
* Assume positive intent.
* Be open to feedback and collaboration.
* Help create an environment where people feel comfortable learning and building.

Most importantly: have fun.
