//
//  Ingredients.swift
//  Recipe List App
//
//  Created by Tzortzis Kapellas on 12/8/21.
//

import Foundation

class Ingredients: Identifiable, Decodable{
    
    var id : UUID?
    var name : String
    var num : Int?
    var denom : Int?
    var unit : String?
}
