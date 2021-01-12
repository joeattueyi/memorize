//
//  Array+Only.swift
//  Memorize
//
//  Created by Joe Attueyi on 12/18/20.
//  Copyright © 2020 Joe Attueyi. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
