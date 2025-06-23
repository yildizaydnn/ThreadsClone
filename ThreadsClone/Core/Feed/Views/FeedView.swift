//
//  FeedView.swift
//  ThreadsClone
//
//  Created by Yıldız Aydın on 23.06.2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false) {
                LazyVStack{
                    ForEach(0...10, id: \.self) { thread in
                        ThreadCell()
                        
                    }
                }
            }
           
            .refreshable {
                print("debug: refresh threads")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar{
            ToolbarItem(placement: .navigation) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }

            }
                

        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
