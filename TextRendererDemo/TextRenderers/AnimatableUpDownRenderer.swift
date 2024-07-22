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

struct AnimatableUpDownRenderer: TextRenderer {
    var yOffset: Double
    var animatableData: Double {
        get {
            yOffset
        }
        set {
            yOffset = newValue
        }
    }
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        for run in layout.flattenedRuns {
            for (index, glyph) in run.enumerated() {
                var copyCtx = ctx
                copyCtx.translateBy(x: 0, y: index.isMultiple(of: 2) ? yOffset : -yOffset)
                copyCtx.draw(glyph)
            }
        }
    }
}
