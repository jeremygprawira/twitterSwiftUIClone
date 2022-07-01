//
//  UserRowView.swift
//  twitterSwiftUIClone
//
//  Created by Jeremy Gerald Prawira on 29/06/22.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack (alignment: .leading, spacing: 4){
                Text("Jeremy G. Prawira")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("@jeremy")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
