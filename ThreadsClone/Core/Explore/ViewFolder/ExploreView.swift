//
//  ExploreVire.swift
//  ThreadsClone
//
//  Created by Yıldız Aydın on 23.06.2025.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { user in
                        VStack {
                            HStack {
                                Image("profile1")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading){
                                    Text("coolcat1")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                    
                                    Text("cat cat")
                                    
                                }
                                .font(.footnote)
                                
                                Spacer()
                                
                                Text("Follow")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .frame(width: 100, height: 32)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(.systemGray),lineWidth: 1)
                                    }
                            }
                            
                            .padding(.horizontal)
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
        }
                }
            }
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
