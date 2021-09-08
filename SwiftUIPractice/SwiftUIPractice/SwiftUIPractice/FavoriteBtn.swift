//
//  FavoriteBtn.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct FavoriteBtn: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action:
                {
                    isSet.toggle()
                })
        {
            Image(systemName: isSet ? "star.fill" : "star" )
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteBtn_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteBtn(isSet: .constant(true))
    }
}
