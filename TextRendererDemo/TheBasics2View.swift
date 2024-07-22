//
// ----------------------------------------------
// Original project: TextRendererDemo
// by  Stewart Lynch on 2024-07-20
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
// ----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.



import SwiftUI

struct TheBasics2View: View {
    let topic = Text("TextRenderer").bold()
    let os = Text("iOS 18").font(.title)
    let introduced = Text("WWDC24").italic()
    var body: some View {
        NavigationStack {
            Text(
    """
    \(topic) are new
    in \(os)
    Introduced at \(introduced)
    """
            )
            .textRenderer(OutlineRenderer(outlineType: .run))
            .navigationTitle("The Basics 2")
        }
    }
}

#Preview {
    TheBasics2View()
}


