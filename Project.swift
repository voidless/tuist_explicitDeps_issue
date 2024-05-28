import ProjectDescription

let project = Project(
    name: "Issue",
    targets: [
        .target(
            name: "IssueApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.IssueApp",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchStoryboardName": "LaunchScreen.storyboard",
                ]
            ),
            sources: ["IssueApp/Sources/**"],
            resources: ["IssueApp/Resources/**"],
            dependencies: [
                .target(name: "Feature"),
            ]
        ),
        .target(
            name: "Feature",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.Feature",
            sources: ["Feature/Sources/**"],
            dependencies: [
                .external(name: "GRDB"),
            ]
        ),
        .target(
            name: "FeatureTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.FeatureTests",
            sources: ["Feature/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Feature")]
        ),
    ]
)
