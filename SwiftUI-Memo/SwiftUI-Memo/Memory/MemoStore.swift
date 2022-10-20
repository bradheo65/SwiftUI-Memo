//
//  MemoStore.swift
//  SwiftUI-Memo
//
//  Created by brad on 2022/10/20.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "Hello", insertData: Date.now),
            Memo(content: "Awsome", insertData: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertData: Date.now.addingTimeInterval(3600 * -48)),
        ]
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll { $0.id == memo.id }
    }
    
    func delete(set: IndexPath) {
        for index in set {
            list.remove(at: index)
        }
    }
}
