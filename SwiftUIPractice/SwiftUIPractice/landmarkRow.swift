//
//  landmarkRow.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct landmarkRow: View {
 
    var landmark: LandMark
    
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .frame(width:50, height: 50)
            Text(landmark.name)
                .font(.headline)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding(.trailing, 5)
                    .foregroundColor(.yellow)
            }
                
        }
    }
}

struct landmarkRow_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        
        landmarkRow(landmark: landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
