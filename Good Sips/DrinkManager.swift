//
//  DrinkManager.swift
//  Good Sips
//
//  Created by Katelin Vincent on 4/2/22.
//

import Foundation

struct DrinkManager {
    let drinkURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?"
    // https the (s) allow for a secure web search
    // we initalize the API url as the drink url
    let drinkName = "Margarita"
    func fetchDrink(drinkName: String) {
        let urlString = "\(drinkURL)&s=\(drinkName)"
         print(urlString)
        // this literally fetches the url BUT allows users to type the (s) which is the drink name
        // we are using this as the master list for now
    }
}

// put this in master list!!
//    if let drink = searchTextField.text{
//          drinkManager.fetchDrink(drinkName: drink)
//      }
//          searchTextField.text = ""
