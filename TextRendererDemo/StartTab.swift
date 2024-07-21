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

struct StartTab: View {
    var body: some View {
        TabView  {
            TheBasicsView()
                .tabItem {
                    Label("Basic", systemImage: "1.circle.fill")
                }
            TheBasics2View()
                .tabItem {
                    Label("Basic2", systemImage: "2.circle.fill")
                }
            TextAttributeExampleView()
                .tabItem {
                    Label("TextAttributeE", systemImage: "3.circle.fill")
                }
            LineRenderingExampleView()
                .tabItem {
                    Label("LineRendering", systemImage: "4.circle.fill")
                }
            GlyphRenderingView()
                .tabItem {
                    Label("GlypRendering", systemImage: "5.circle.fill")
                }
            AnimatedGlyphRenderingView()
                .tabItem {
                    Label("AnimatedGlyphs", systemImage: "6.circle.fill")
                }
        }
    }
}

#Preview {
    StartTab()
}
