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

struct OutlineRenderer: TextRenderer {
    enum OutlineType {
        case line, run, glyph
    }
    let outlineType: OutlineType
    func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
        for line in layout {
            if outlineType == .line {
                            ctx.stroke(Rectangle().path(in: line.typographicBounds.rect), with: .color(.red), lineWidth: 2)
                            ctx.draw(line)
            }
            for run in line {
                if outlineType == .run {
                    ctx.stroke(Rectangle().path(in: run.typographicBounds.rect), with: .color(.green), lineWidth: 2)
                    ctx.draw(run)
                }
                for glyph in run {
                    if outlineType == .glyph {
                        ctx.stroke(Rectangle().path(in: glyph.typographicBounds.rect), with: .color(.yellow), lineWidth: 2)
                        ctx.draw(glyph)
                    }
                }
            }
        }
    }
}
