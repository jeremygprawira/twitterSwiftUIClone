//
//  UserStatsView.swift
//  twitterSwiftUIClone
//
//  Created by Jeremy Gerald Prawira on 30/06/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack (spacing: 32) {
            HStack (spacing: 4) {
                Text("1")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack (spacing: 4) {
                Text("15M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
