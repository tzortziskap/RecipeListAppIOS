//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Tzortzis Kapellas on 8/8/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        //Create an instance of data service and get the data
//        let service = DataService()
//        self.recipes = service.getLocalData()
        //Another way
//        self.recipes = DataService().getLocalData()
        //Another way
        self.recipes = DataService.getLocalData()
    }
}
