//
//  DataService.swift
//  Recipe List App
//
//  Created by Tzortzis Kapellas on 8/8/21.
//

import Foundation

class DataService{
    
    static func getLocalData() -> [Recipe]{
        
        //Parse local json file
        
        //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        //Create a data object
        do {
            let data = try Data(contentsOf: url)
            
            //Decode the data with JSON decoder
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                //Add the unique IDs
                for recipe in recipeData {
                    recipe.id = UUID()
                    
                    for ingredient in recipe.ingredients{
                        ingredient.id = UUID()
                    }
                }
                
                //Return the recipes
                return recipeData
            }
            catch {
                print(error)
                return [Recipe]()
            }
        }
        catch {
            print(error)
            return [Recipe]()
        }
    }
}
