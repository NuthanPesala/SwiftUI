//
//  CategoryRow.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct CategoryRow: View {
    
    var items: [LandMark]
    var courses : [Course]  = [Course(id: 1, date: "Nov 11,2020", resources: 20),
                               Course(id: 2, date: "Nov 30,2020", resources: 10),
                               Course(id: 3, date: "Nov 22,2020", resources: 5),
                               Course(id: 4, date: "Nov 10,2020", resources: 8),
                               Course(id: 5, date: "Nov 15,2020", resources: 7),
                               Course(id: 6, date: "Nov 16,2020", resources: 6),
    ]
    init(items: [LandMark]) {
        self.items = items
            UINavigationBar.appearance().barTintColor = .systemGreen
        }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Rational Numbers ICSE")
                    .font(.title)
            ScrollView {
                    ForEach(courses) {
                        course in
                        VStack(alignment: .leading) {
                        Text("session \(course.id): Lecture")
                            .font(.title2)
                        HStack{
                            Text(course.date)
                            VStack {
                                Divider()
                            }
                            Text("\(course.resources) resources")
                            
                        }
                        
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack(alignment: .top, spacing: 5){
                                ForEach(items){ item in
                                    CategoryItem(landmark: item)
                                }
                            }
                        }
                    }
                    }
                    
                    Spacer()
                    
                } 
            }.padding()
            .navigationTitle("Subject")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(items: landmarks)
    }
}
