//
//  SwiftUIPracticeApp.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {
   
    
    
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(modelData)
        }
    }
}
