//
// ----------------------------------------------
// Original project: TextRendererDemo
// by  Stewart Lynch on 2024-07-21
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

struct LineRenderingExampleView: View {
    let textView =  Text("TextRenderer are new\nin iOS \nIntroduced at WWDC24")
    var body: some View {
        NavigationStack {
            textView.font(.title).bold().foregroundStyle(.blue)
//                .textRenderer(AlternateLineRenderer())
                .textRenderer(AngledLineRenderer())
                .navigationTitle("LineRenderer")
        }
    }
}

#Preview {
    LineRenderingExampleView()
}
