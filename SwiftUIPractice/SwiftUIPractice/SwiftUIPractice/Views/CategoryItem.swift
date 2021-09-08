//
//  CategoryItem.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct CategoryItem: View {
    
    @State private var goToNewView: Bool = false
    var landmark: LandMark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.headline)
                .padding(15)
            NavigationLink(destination: LandmarkDetail(landmark: landmark), isActive: self.$goToNewView) { EmptyView() }
        }.onTapGesture {
            self.goToNewView.toggle()
        }
        
        
        
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
