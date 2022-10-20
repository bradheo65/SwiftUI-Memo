//
//  DetailView.swift
//  SwiftUI-Memo
//
//  Created by brad on 2022/10/20.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var memo: Memo
    
    @EnvironmentObject var store: MemoStore
    
    @State private var showComposer = false
    @State private var showDetailAlert = false
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        Text(memo.content)
                            .padding()
                        Spacer(minLength: 0)
                    }
                    
                    Text(memo.insertData, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("메모 보기")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        showComposer = true
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        showDetailAlert = true
                    } label: {
                        Image(systemName: "trash")
                    }
                    .foregroundColor(.red)
                    .alert("삭제 확인",
                           isPresented: $showDetailAlert) {
                        Button(role: .destructive) {
                            store.delete(memo: memo)
                            dismiss()
                        } label: {
                            Text("삭제")
                        }
                    } message: {
                        Text("메모를 삭제할까요")
                    }

                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView(memo: memo)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(memo: Memo(content: "Hello"))
                .environmentObject(MemoStore())
        }
    }
}
