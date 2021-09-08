//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct LandmarkList: View {
    
    @State private var showsFavoriteOnly = false
    @EnvironmentObject var modeldata: ModelData
    
    var filteredLandmarks : [LandMark] {
        modeldata.landmarks.filter({
            landmark in
            (!showsFavoriteOnly || landmark.isFavorite)
        })
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showsFavoriteOnly) {
                    Text("Shows Favorites Only")
                }
                ForEach(filteredLandmarks) {
                landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    landmarkRow(landmark: landmark)
                }
            }
        }
      .navigationBarTitle("Landmarks")
    }
}
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
