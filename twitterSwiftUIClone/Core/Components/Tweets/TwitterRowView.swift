//
//  TwitterRowView.swift
//  twitterSwiftUIClone
//
//  Created by Jeremy Gerald Prawira on 27/06/22.
//

import SwiftUI

struct TwitterRowView: View {
    var body: some View {
        VStack (alignment: .leading) {
            // Profile Image, User Info, Tweet
            HStack (alignment: .top, spacing: 12) {
                // Profile Image
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                // User Info, Tweet
                VStack (alignment: .leading, spacing: 4){
                    // User Info
                    HStack {
                        Text("Jeremy G. Prawira")
                            .font(.subheadline)
                            .bold()
                        
                        Text("@jeremy")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                        
                        Text("3w")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                    }
                    
                    // Tweet
                    Text("Hire me please. Fr.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // Action Buttons
            HStack {
                // Button 1
                Button {
                    print("Button 1")
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                // Button 2
                Button {
                    print("Button 2")
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                
                // Button 3
                Button {
                    print("Button 3")
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                
                // Button 2
                Button {
                    print("Button 2")
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding(.leading, 65.0)
            .padding(.trailing, 40.0)
            .padding(.bottom, 5.0)
            .foregroundColor(Color(.systemGray))
            
            Divider()
                .padding(.horizontal, 3.0)
        }
        .padding()
    }
}

struct TwitterRowView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterRowView()
    }
}
