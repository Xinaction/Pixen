//
//  NSWindowController+Additions.swift
//  Pixen
//
//  Created by sana on 2019/09/04.
//  Copyright © 2019 Pixen Project. All rights reserved.
//

import AppKit

extension NSWindowController {
    @objc var isVisible: Bool {
        guard let window = self.window else {
            return false
        }
        return self.isWindowLoaded && window.isVisible
    }
    
    @objc func toggleWindow() {
        if isVisible {
            self.close()
        } else {
            self.showWindow(nil)
        }
    }
}

