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

struct UpDownRenderer: TextRenderer {
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        for run in layout.flattenedRuns {
            for (index, glyph) in run.enumerated() {
                var copyCtx = ctx
//                if index.isMultiple(of: 2) {
//                    copyCtx.translateBy(x: 0, y: 5)
//                } else {
//                    copyCtx.translateBy(x: 0, y: -5)
//                }
                copyCtx.translateBy(x: 0, y: index.isMultiple(of: 2) ? 5 : -5)
                copyCtx.draw(glyph)
            }
        }
    }
}
