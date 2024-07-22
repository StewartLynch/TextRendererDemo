//
// ----------------------------------------------
// Original project: TextRendererDemo
// by  Stewart Lynch on 2024-07-22
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

struct HighlightRenderer: TextRenderer {
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        for line in layout {
            for run in line {
                if run[HighlightAttribute.self] != nil {
                    let rect = run.typographicBounds.rect
                    let path = Rectangle().path(in: rect)
                    ctx.fill(path, with: .color(.yellow.opacity(0.6)))
                    ctx.draw(run)
                } else {
                    ctx.draw(run)
                }
            }
        }
    }

}
struct HighlightAttribute: TextAttribute {}
