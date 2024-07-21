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

struct TheBasicsView: View {
    var body: some View {
        NavigationStack {
            Text(
    """
    TextRenderer are new
    in iOS 18
    Introduced at WWDC24
    """
            )
            .navigationTitle("The basics")
        }
    }
}

#Preview {
    TheBasicsView()
}

