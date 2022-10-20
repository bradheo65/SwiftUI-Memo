//
//  MainListView.swift
//  SwiftUI-Memo
//
//  Created by brad on 2022/10/20.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore 
    
    var body: some View {
        List(store.list) { memo in
            Text(memo.content)
            
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
