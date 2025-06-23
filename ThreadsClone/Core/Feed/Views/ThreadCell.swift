//
//  ThreadCell.swift
//  ThreadsClone
//
//  Created by Yıldız Aydın on 23.06.2025.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 12){
                Image("profile1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                
                VStack{
                   
                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text("coolcat1")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("10m")
                                .font(.caption)
                                .foregroundStyle(Color(.systemGray3))
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "ellipsis")
                                    .foregroundStyle(Color(.darkGray))
                            }
                        }
                        
                        Text("I like coffe")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        HStack(spacing: 16) {
                            Button {
                                
                            } label: {
                                Image(systemName: "heart")
                            }
                            
                            Button {
                                
                            }label: {
                                Image(systemName: "arrow.rectanglepath")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "bubble.right")

                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "paperplane")

                            }

                        }
                        .foregroundStyle(.black)
                        .padding(.vertical, 8)
                    }
                    
                    
                
                 
                }
                
            }
            Divider()
           
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
