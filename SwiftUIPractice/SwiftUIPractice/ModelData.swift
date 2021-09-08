//
//  ModelData.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import Foundation
import Combine

final class ModelData : ObservableObject
{
   @Published var landmarks : [LandMark] = load(filename: "landmarkData.json" )
}


func load<T: Codable>(filename: String) -> [T] {
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Failed to get data")
    }
    
    var data : Data
    var result : [T]
    do {
        data = try! Data(contentsOf: file)
        result = try! JSONDecoder().decode([T].self, from: data)
        return result
    }
    catch {
        print("failed to get Data")
        fatalError("Failed to get data")
    }
}
