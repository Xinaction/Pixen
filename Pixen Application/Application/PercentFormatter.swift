//
//  PercentFormatter.swift
//  Pixen
//
//  Created by sana on 2019/09/04.
//  Copyright © 2019 Pixen Project. All rights reserved.
//

import Foundation

class PercentFormatter: NumberFormatter {
    override func isPartialStringValid(_ partialString: String, newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>?, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool {
        
        guard let ex1 = try? NSRegularExpression(pattern: "*^\\d+%$", options: []),
            let ex2 = try? NSRegularExpression(pattern: "*^\\d+$", options: []) else {
                
                return false
        }
        
        let match1 = ex1.numberOfMatches(in: partialString,
                                         options: [],
                                         range: NSMakeRange(0, partialString.count))
        
        let match2 = ex2.numberOfMatches(in: partialString,
                                         options: [],
                                         range: NSMakeRange(0, partialString.count))
        
        return (match1 + match2) > 0
    }
}
