//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Joe Attueyi on 12/18/20.
//  Copyright © 2020 Joe Attueyi. All rights reserved.
//

import Foundation


extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
