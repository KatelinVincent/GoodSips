
//  Webservice.swift
//  Good Sips
//
//  Created by Katelin Vincent, Jordan Finney on 4/2/22.
//

import Foundation
import UIKit

enum NetworkError: Error {
    case badURL
    case badID
}

class Webservice {
    
    func getDrinks(searchTerm: String) async throws -> [Drink]{ // search by name
        var components = URLComponents()
        components.host = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
        
        guard let url = components.url else {
            throw NetworkError.badURL
        }
        let (data, response) = try await URLSession.shared.data(from:URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=\(searchTerm)")!)
            let DrinkResponse = try JSONDecoder().decode(DrinkResponse.self, from: data)
        return DrinkResponse.drinks ?? []
    }
    
    func getDrinksList(firstLetter: String) async throws -> [Drink]{ // first letter
        var components = URLComponents()
        // embed in loop a- z to print all drinks
        components.host = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f="

        guard let url = components.url else {
            throw NetworkError.badURL
        }
        let (data, response) = try await URLSession.shared.data(from:URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=")!)
            let DrinkResponse = try JSONDecoder().decode(DrinkResponse.self, from: data)
        return DrinkResponse.drinks ?? []
    }
    func getDrinksIngredients(searchTerm: String) async throws -> [Drink]{ // search by ingredient
        var components = URLComponents()
        components.host = "https://www.thecocktaildb.com/api/json/v1/1/search.php?i="

        guard let url = components.url else {
            throw NetworkError.badURL
        }
        let (data, response) = try await URLSession.shared.data(from:URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=")!)
            let DrinkResponse = try JSONDecoder().decode(DrinkResponse.self, from: data)
        return DrinkResponse.drinks ?? []
    }
}

