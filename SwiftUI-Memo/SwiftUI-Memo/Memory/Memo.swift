//
//  Memo.swift
//  SwiftUI-Memo
//
//  Created by brad on 2022/10/20.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertData: Date
    
    init(content: String, insertData: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertData = insertData
    }
}
