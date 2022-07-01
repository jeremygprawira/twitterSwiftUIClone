//
//  ContentView.swift
//  twitterSwiftUIClone
//
//  Created by Jeremy Gerald Prawira on 27/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            MainTabView()
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .background(.white)
                .offset(x: showMenu ? 0 : -300, y: 0)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem (placement:.navigationBarLeading) {
                Button {
                    showMenu.toggle()
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
