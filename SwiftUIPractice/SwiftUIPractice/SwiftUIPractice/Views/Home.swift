//
//  Home.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct Home: View {
    
    init() {
        UINavigationBar.appearance().barTintColor = .green
    }
    
    var body: some View {
        TabView {
            Text("Home")
                .foregroundColor(.red)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Text("Assignment")
                .foregroundColor(.blue)
                .tabItem {
                    Image(systemName: "book")
                    Text("Assignment")
                }
            
            CategoryRow(items: ModelData().landmarks)
                .tabItem {
                    Image(systemName: "book")
                    Text("Exam Corner")
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    
    static var previews: some View {
        Home()
    }
}
