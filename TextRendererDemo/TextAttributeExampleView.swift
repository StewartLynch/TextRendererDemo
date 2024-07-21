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

struct TextAttributeExampleView: View {
    let topic = Text("TextRenderer")
    let os = Text("iOS 18")
    let introduced = Text("WWDC24")
    var body: some View {
        NavigationStack {
            Text("\(topic) are new in \(os) Introduced at \(introduced)")
            .navigationTitle("Text Attributes")
        }
    }

}

#Preview {
    TextAttributeExampleView()
}

