//
//  SideMenuView.swift
//  twitterSwiftUIClone
//
//  Created by Jeremy Gerald Prawira on 30/06/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            VStack (alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Jeremy G. Prawira")
                            .font(.headline)
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(Color(.systemBlue))
                    }
                    
                    Text("@jeremy")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id:\.rawValue) { option in
                HStack (spacing: 16){
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
